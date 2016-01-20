#!/bin/bash -elx

[ $# -lt 3 ] && usage && exit 1
[ $# -gt 4 ] && usage && exit 1

DIR=$(cd "$(dirname "$0")";pwd)

. ${DIR}/base.sh

TARGET_ENV=$1
COMPONNET=$2
TASKS=${3:-}

PIDS=

usage() {
    echo "$0"
}

env_check(){
    return 0
}

stop(){
    if [ -f ${WORK_DIR}/${COMPONNET}/bin/stop.sh ]; then
        for task in `echo ${TASKS} |awk -F, '{NF-=0}1'`; do
            bash ${WORK_DIR}/${COMPONNET}/bin/stop.sh ${task}
        done
    fi
}

start() {
    ls ${WORK_DIR}/${COMPONNET}/bin/start.sh
    if [ -f ${WORK_DIR}/${COMPONNET}/bin/start.sh ]; then
        for task in `echo ${TASKS} |awk -F, '{NF-=0}1'`; do
            nohup bash ${WORK_DIR}/${COMPONNET}/bin/start.sh ${task} >> ${WORK_DIR}/${COMPONNET}/logs/${task}.log 2>&1 &
            PIDS=$PIDS,$!
        done
    fi
    sleep 30
}

reset() {
    curl --user ${HTTP_BASIC_USER}:${HTTP_BASIC_PASSPORD} ${FILE_REPO}/builds/${TARGET_ENV}/${COMPONNET}/${COMPONNET}-latest.tar.gz > ${WORK_DIR}/${COMPONNET}-latest.tar.gz
    [ -d ${WORK_DIR}/node-${COMPONNET} ] && rm -rf ${WORK_DIR}/${COMPONNET}
    mkdir -p ${WORK_DIR}/${COMPONNET}
    tar -xf ${WORK_DIR}/${COMPONNET}-latest.tar.gz -C ${WORK_DIR}
    mkdir -p ${WORK_DIR}/${COMPONNET}/logs
}


status() {
    for pid in `echo ${PIDS} |awk -F, '{NF-=0}1'`; do
        if [ "${pid}" != "" ]; then
            tmp=`ps --no-heading ${pid} | wc -l`
            [ "${tmp}" != "1" ] && return 1
        fi
    done
    return 0
}

check_err env_check "Failed to check runtime env!"
check_err reset "Failed to reset ${COMPONNET}!"
check_err stop "Failed to stop ${COMPONNET}!"
check_err start "Failed to start ${COMPONNET}!"
check_err status "Failed to check status of ${COMPONNET}"
exit 0