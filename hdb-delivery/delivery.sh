#!/bin/bash -el

[ $# -lt 5 ] && usage && exit 1

TARGET_ENV=${1}
COMPONNET=${2}
LISTEN_PORT=${3}
AJP_PORT=${4}
SHUTDOWN_PORT=${5}
PORTS=

[ $# -eq 6 ] && PORTS=${6}

HTTP_BASIC_USER=hdb
HTTP_BASIC_PASSPORD=p0o9i8u7
TOMCAT_PACKAGE_NAME=apache-tomcat-7.0.65
FILE_REPO=http://120.26.219.48:8080/

usage() {
	echo "$0 env componnet tomcat-listen-port tomcat-ajp-port tomcat-shutdown-port rpc-ports"
}

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $@" >&2
  exit 1
}

check_err() {
  $1 2>&1  || err $2
}


check_port(){
	nc -v -w 10 -z 127.0.0.1 $1
	return $?
}

check_with_retry() {
    cmd=$1
    timeout=$2
    for i in `seq 1 1 ${timeout}`; do
        $1 && return 0
        sleep 1
    done
    return 1
}

check_error() {
	$@ || exit 1
}

kill_process_with_sig() {
	filter=${1}
	sig=${2}
	pids=`ps aux | grep tomcat-${filter} | grep -v grep | awk '{print $2}'`
	[ -z ${pids} ] && return 0
	kill -${sig}  $pids
	sleep 1
	pids=`ps aux | grep tomcat-${filter} | grep -v grep | awk '{print $2}'`
	[ -z "${pids}" ] && return 0
	return 1
}

kill_process() {
	filter=$1
	pids=`ps aux | grep ${filter} | grep -v grep | awk '{print $2}'`
	[ -z ${pids} ] && return 0
	kill $pids
	sleep 1
	pids=`ps aux | grep ${filter} | grep -v grep | awk '{print $2}'`
	[ -z "${pids}" ] && return 0
	return 1
}


ROOT_DIR=/data

stop(){
	
	[ -d ${ROOD_DIR}/tomcat-${COMPONNET} ] && check_port ${LISTEN_PORT} && ${ROOT_DIR}/tomcat-${COMPONNET}/bin/shutdown.sh && sleep 1;

	check_with_retry "kill_process tomcat-${COMPONNET}" 30 || check_with_retry "kill_process_with_sig tomcat-${COMPONNET} 9" 30 || return 1

	return 0
}

start() {
    ${ROOT_DIR}/tomcat-${COMPONNET}/bin/startup.sh
    sleep 1
}

reset() {
	[ -d ${ROOT_DIR}/tomcat-${COMPONNET} ] && rm -rf ${ROOT_DIR}/tomcat-${COMPONNET}
	curl --user ${HTTP_BASIC_USER}:${HTTP_BASIC_PASSPORD} ${FILE_REPO}/tools/${TOMCAT_PACKAGE_NAME}.tar.gz > /tmp/${TOMCAT_PACKAGE_NAME}.tar.gz
    sleep 1
    tar xvf /tmp/${TOMCAT_PACKAGE_NAME}.tar.gz -C $ROOT_DIR
    mv ${ROOT_DIR}/${TOMCAT_PACKAGE_NAME} ${ROOT_DIR}/tomcat-${COMPONNET}
    sed -i "s/8005/${SHUTDOWN_PORT}/g" ${ROOT_DIR}/tomcat-${COMPONNET}/conf/server.xml
    sed -i "s/8009/${AJP_PORT}/g" ${ROOT_DIR}/tomcat-${COMPONNET}/conf/server.xml
    sed -i "s/8080/${LISTEN_PORT}/g" ${ROOT_DIR}/tomcat-${COMPONNET}/conf/server.xml
    rm -rf ${ROOT_DIR}/tomcat-${COMPONNET}/webapps/* 
    curl --user ${HTTP_BASIC_USER}:${HTTP_BASIC_PASSPORD} ${FILE_REPO}/builds/${TARGET_ENV}/${COMPONNET}/${COMPONNET}-latest.war > ${ROOT_DIR}/tomcat-${COMPONNET}/webapps/${COMPONNET}.war
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