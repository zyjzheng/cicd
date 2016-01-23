#!/bin/bash -el

DIR=$(cd "$(dirname "$0")";pwd)

. ${DIR}/base.sh

usage() {
	echo "$0 env componnet"
}

[ $# -ne 2 ] && usage && exit 1

HDB_ENV=${1}
COMPONNET=${2}

[ ! -f ${DIR}/${HDB_ENV}/${COMPONNET}.rc ] && err "Componnet ${COMPONNET} not found!"

. ${DIR}/${HDB_ENV}/${COMPONNET}.rc

[ -z ${IPS} ] && err "Not target server found for Componnet ${COMPONNET}!"
[ -z ${TOMCAT_SHUTDOWN_PORT} ] && err "Not TOMCAT_SHUTDOWN_PORT found for Componnet ${COMPONNET}!"
[ -z ${TOMCAT_AJP_PORT} ] && err "Not TOMCAT_AJP_PORT found for Componnet ${COMPONNET}!"
[ -z ${TOMCAT_LISTEN_PORT} ] && err "Not TOMCAT_LISTEN_PORT found for Componnet ${COMPONNET}!"

IP_LIST=`echo ${IPS} | awk -F, '{NF-=0}1'`


for ip in ${IP_LIST}; do
	check_err "scp_exec ${ip} ${DIR}/base.sh /tmp/base.sh" "Failed to copy base.sh to ${ip}"
	check_err "scp_exec ${ip} ${DIR}/delivery.sh /tmp/delivery.sh" "Failed to copy delivery.sh to ${ip}"
	#check_err "ssh_exec ${ip} \'/bin/chmod +x /tmp/base.sh\'" "Failed to chmod +x base.sh to ${ip}"
	#check_err "ssh_exec ${ip} \'/bin/chmod +x /tmp/delivery.sh\'" "Failed to chmod +x delivery.sh to ${ip}"
	ssh_exec ${ip} "/bin/bash /tmp/delivery.sh ${HDB_ENV} ${COMPONNET} ${TOMCAT_LISTEN_PORT} ${TOMCAT_AJP_PORT} ${TOMCAT_SHUTDOWN_PORT} ${PORTS}"
	[ ! "$?" = "0" ] && err "Failed to exec delivery.sh on ${ip}!"
done
exit 0
