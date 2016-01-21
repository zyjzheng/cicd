#!/bin/bash -el

[ $# -lt 3 ] && usage && exit 1
[ $# -gt 4 ] && usage && exit 1

DIR=$(cd "$(dirname "$0")";pwd)

. ${DIR}/base.sh

TARGET_ENV=$1
COMPONNET=$2
CLUSTER_NUMBER=$3
PORTS=${4:-}

usage() {
    echo "$0"
}

NODE_CMD=node
NPM_CMD=npm
PM2_CMD=pm2
GULP_CMD=gulp

env_check(){
    NodeVersion=$(${NODE_CMD} -v) 
    [ "$?" != "0" ] && echo "pls install node" && return 1
    echo node/${NodeVersion}
    NPMVersion=$(${NPM_CMD} -v)
    [ "$?" != "0" ] && echo "pls install npm" && return 1
    echo npm/${NPMVersion}
    PM2Version=$(${PM2_CMD} -v)
    [ "$?" != "0" ] && echo "pls install pm2" && return 1
    echo pm2/${PM2Version}
    GULPVersion=$(${GULP_CMD} -v)
    [ "$?" != "0" ] && echo "pls install gulp" && return 1
    echo gulp/${GULPVersion}
    return 0
}


stop(){
    ${PM2_CMD} stop $COMPONNET
    sleep 1
    #${PM2_CMD} delete $COMPONNET
    sleep 1
    return 0
}

start() {
    cd ${WORK_DIR}/node-${COMPONNET}
    START_CMD=${WORK_DIR}/node-${COMPONNET}/bin/www
    [ "${COMPONNET}" == "hdb-admin-web" ]  && START_CMD=${WORK_DIR}/node-${COMPONNET}/bin/www-admin
    echo $START_CMD
    AppStatus=`${PM2_CMD} show ${COMPONNET}`
    if [ "$?" == "0" ]; then
        echo "Reload ${COMPONNET}"
        ${PM2_CMD} reload ${COMPONNET}
    else
        echo "Start ${COMPONNET}"
        ${PM2_CMD} start ${START_CMD} --name ${COMPONNET} -i ${CLUSTER_NUMBER}
    fi
}

reset() {
    curl --user ${HTTP_BASIC_USER}:${HTTP_BASIC_PASSPORD} ${FILE_REPO}/builds/${TARGET_ENV}/${COMPONNET}/${COMPONNET}-latest.tar.gz > ${WORK_DIR}/${COMPONNET}-latest.tar.gz
    [ -d ${WORK_DIR}/node-${COMPONNET} ] && rm -rf ${WORK_DIR}/node-${COMPONNET}
    mkdir -p ${WORK_DIR}/node-${COMPONNET}
    tar -xf ${WORK_DIR}/${COMPONNET}-latest.tar.gz -C ${WORK_DIR}/node-${COMPONNET}
    curl --user ${HTTP_BASIC_USER}:${HTTP_BASIC_PASSPORD} ${FILE_REPO}/builds/${TARGET_ENV}/${COMPONNET}/${COMPONNET}-latest.json > ${WORK_DIR}/node-${COMPONNET}/config.json
    cd ${WORK_DIR}/node-${COMPONNET}
    [ ! -d ${WORK_DIR}/node_modules ] && mkdir -p ${WORK_DIR}/node_modules
    ln -s ${WORK_DIR}/node_modules ${WORK_DIR}/node-${COMPONNET}/node_modules
    ${NPM_CMD} config set registry http://registry.npm.taobao.org/
    ${NPM_CMD} install
    ${GULP_CMD}
}


status() {
    [ -z ${PORTS} ] && return 0

    for port in `echo ${PORTS} |awk -F, '{NF-=0}1'`; do
        [ ! -z ${port} ] && check_with_retry "check_port ${port}" 30 || return 1
    done
    return 0
}

check_err env_check "Failed to check runtime env!"
check_err reset "Failed to reset ${COMPONNET}!"
check_err stop "Failed to stop ${COMPONNET}!"
check_err start "Failed to start ${COMPONNET}!"
check_err status "Failed to check status of ${COMPONNET}"
