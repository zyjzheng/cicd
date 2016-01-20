
WORK_DIR=/data
HTTP_BASIC_USER=hdb
HTTP_BASIC_PASSPORD=p0o9i8u7
TOMCAT_PACKAGE_NAME=apache-tomcat-7.0.65
NODE_PACKAGE_NAME=node-v4.2.4-linux-x64
FILE_REPO=http://120.26.219.48:8080/

DIR=$(cd "$(dirname "$0")";pwd)

SSH_CMD=ssh
SSH_OPTION="-o StrictHostKeyChecking=no -o PasswordAuthentication=no"
SSH_KEY=${DIR}/hdb.key
SSH_USER=www
SCP_CMD=scp

ssh_exec() {
	if [ -f ${SSH_KEY} ]; then 
		${SSH_CMD} ${SSH_OPTION} -i ${SSH_KEY} ${SSH_USER}@${1} $2
	else 
		${SSH_CMD} ${SSH_OPTION} ${SSH_USER}@${1} $2
	fi
	return $?
}

scp_exec() {
	if [ -f ${SSH_KEY} ]; then 
		${SCP_CMD} ${SSH_OPTION} -i ${SSH_KEY} -r ${2} ${SSH_USER}@${1}:"$3"
	else 
		${SCP_CMD} ${SSH_OPTION} -r ${2} ${SSH_USER}@${1}:"$3"
	fi
	return $?
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

kill_process_with_sig() {
	filter=${1}
	sig=${2}
	pids=`ps aux | grep ${filter} | grep -v grep | awk '{print $2}'`
	[ -z ${pids} ] && return 0
	kill -${sig}  $pids
	sleep 1
	pids=`ps aux | grep ${filter} | grep -v grep | awk '{print $2}'`
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
