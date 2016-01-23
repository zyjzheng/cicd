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

TASKS=${TASKS:-all}

IP_LIST=`echo ${IPS} | awk -F, '{NF-=0}1'`

for ip in ${IP_LIST}; do

	check_err "scp_exec ${ip} ${DIR}/base.sh /tmp/base.sh" "Failed to copy base.sh to ${ip}"

	check_err "scp_exec ${ip} ${DIR}/delivery-task.sh /tmp/delivery-task.sh" "Failed to copy delivery-task.sh to ${ip}"

	#check_err "ssh_exec ${ip} \'/bin/chmod +x /tmp/base.sh\'" "Failed to chmod +x base.sh to ${ip}"

	#check_err "ssh_exec ${ip} \'/bin/chmod +x /tmp/delivery.sh\'" "Failed to chmod +x delivery.sh to ${ip}"
	ssh_exec ${ip} "/bin/bash -l /tmp/delivery-task.sh ${HDB_ENV} ${COMPONNET} ${TASKS}"

	[ ! "$?" = "0" ] && err "Failed to exec delivery-task.sh on ${ip}!"

done

exit 0
