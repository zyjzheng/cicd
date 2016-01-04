#!/bin/sh
ROOT_DIR=$(cd "$(dirname "$0")";pwd)

. $ROOT_DIR/hdb.rc

init_item_inventory() {
    BASEPATH=$ROOT_DIR/files
    ORGS=`ls $BASEPATH/items`
    for org in $ORGS; do
        ITEMS=`ls $BASEPATH/items/$org`
        for item in $ITEMS; do
            echo $org $item
            $PYTHON_CMD $ROOT_DIR/hdb.py  $HDB_ADMIN_URL $BASEPATH $org $item 
        done
    done
}

log "Step-1 Init item data. .."
check_err init_item_inventory "Failed to init item data!"
log "Success to init item data..."
