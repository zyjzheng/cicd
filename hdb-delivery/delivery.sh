#!/bin/bash -el

[ $# -lt 5 ] && usage && exit 1

DIR=$(cd "$(dirname "$0")";pwd)

. ${DIR}/base.sh

TARGET_ENV=${1}
COMPONNET=${2}
LISTEN_PORT=${3}
AJP_PORT=${4}
SHUTDOWN_PORT=${5}
PORTS=

[ $# -eq 6 ] && PORTS=${6}

usage() {
	echo "$0 env componnet tomcat-listen-port tomcat-ajp-port tomcat-shutdown-port rpc-ports"
}


stop(){
	
	[ -d ${WORK_DIR}/tomcat-${COMPONNET} ] && check_port ${LISTEN_PORT} && ${WORK_DIR}/tomcat-${COMPONNET}/bin/shutdown.sh && sleep 1;

	check_with_retry "kill_process tomcat-${COMPONNET}" 30 || check_with_retry "kill_process_with_sig tomcat-${COMPONNET} 9" 30 || return 1

	return 0
}

start() {
    ${WORK_DIR}/tomcat-${COMPONNET}/bin/startup.sh
    sleep 1
}


add_pinpoint() {
    DEST_FILE=${WORK_DIR}/tomcat-${COMPONNET}/bin/setenv.sh
cat <<EOF>$DEST_FILE
AGENT_PATH=/data/pinpoint-agent
VERSION=1.5.1
AGENT_ID=${COMPONNET}
APP_NAME=${COMPONNET}
export JAVA_OPTS="-javaagent:\$AGENT_PATH/pinpoint-bootstrap-\$VERSION.jar -Dpinpoint.agentId=\${AGENT_ID} -Dpinpoint.applicationName=\${APP_NAME}"
EOF

}


reset() {
	[ -d ${WORK_DIR}/tomcat-${COMPONNET} ] && rm -rf ${WORK_DIR}/tomcat-${COMPONNET}
	curl --user ${HTTP_BASIC_USER}:${HTTP_BASIC_PASSPORD} ${FILE_REPO}/tools/${TOMCAT_PACKAGE_NAME}.tar.gz > /tmp/${TOMCAT_PACKAGE_NAME}.tar.gz
    sleep 1
    tar xf /tmp/${TOMCAT_PACKAGE_NAME}.tar.gz -C ${WORK_DIR}
    mv ${WORK_DIR}/${TOMCAT_PACKAGE_NAME} ${WORK_DIR}/tomcat-${COMPONNET}
    sed -i "s/8005/${SHUTDOWN_PORT}/g" ${WORK_DIR}/tomcat-${COMPONNET}/conf/server.xml
    sed -i "s/8009/${AJP_PORT}/g" ${WORK_DIR}/tomcat-${COMPONNET}/conf/server.xml
    sed -i "s/8080/${LISTEN_PORT}/g" ${WORK_DIR}/tomcat-${COMPONNET}/conf/server.xml
    add_pinpoint
    rm -rf ${WORK_DIR}/tomcat-${COMPONNET}/webapps/* 
    curl --user ${HTTP_BASIC_USER}:${HTTP_BASIC_PASSPORD} ${FILE_REPO}/builds/${TARGET_ENV}/${COMPONNET}/${COMPONNET}-latest.war > ${WORK_DIR}/tomcat-${COMPONNET}/webapps/${COMPONNET}.war
}


status() {
	pids=`ps aux | grep tomcat-${COMPONNET} | grep -v grep | awk '{print $2}'`
	[ -z "${pids}" ] && return 1
	check_with_retry "check_port ${LISTEN_PORT}" 60 || return 1
	check_with_retry "check_port ${AJP_PORT}" 60 || return 1
	check_with_retry "check_port ${SHUTDOWN_PORT}" 60 || return 1

	[ -z ${PORTS} ] && return 0

	for port in `echo ${PORTS} |awk -F, '{NF-=0}1'`; do
		[ ! -z ${port} ] && check_with_retry "check_port ${port}" 30 || return 1
	done
	return 0
}


check_err stop "Failed to stop ${COMPONNET}!"
check_err reset "Failed to reset ${COMPONNET}!"
check_err start "Failed to start ${COMPONNET}!"
check_err status "Failed to check status of ${COMPONNET}"
