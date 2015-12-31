#!/bin/sh
ROOT_DIR=$(cd "$(dirname "$0")";pwd)

. $ROOT_DIR/hdb.rc

init_mysql() {
  cat $ROOT_DIR/$HDB_SQL_FILE |  $MYSQL_CMD -h$MYSQL_HOST -u$MYSQL_USERNAME -p$MYSQL_PASSWORD
}

init_data() {
  python $ROOT_DIR/hdb-data-init.py $ROOT_DIR/files
}


log "Step-1 Reset Databases..."
check_err init_mysql "Failed to init MySQL!"
log "Success to Reset Databases..."

log "Step-2 Generate Init data..."
rm -rf $ROOT_DIR/files
check_err init_data "Failed to generate the init data!"
log "Step-2 Success to generate the init data!"
