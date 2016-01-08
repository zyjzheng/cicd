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
            $PYTHON_CMD $ROOT_DIR/hdb-item.py  $HDB_ADMIN_URL $BASEPATH $org $item 
        done
    done
}

init_ff() {
    BASEPATH=$ROOT_DIR/files
    FFS=`ls $BASEPATH/ffs`
    for ff in $FFS; do
        $PYTHON_CMD $ROOT_DIR/hdb-ff.py $HDB_ADMIN_URL $BASEPATH $ff
    done
}

log "Step-1 Init item data..."
check_err init_item_inventory "Failed to init item data!"
log "Success to init item data..."

log "Step-2 Init FF data..."
check_err init_ff "Failed to init FF data!"
log "Success to init FF data..."
