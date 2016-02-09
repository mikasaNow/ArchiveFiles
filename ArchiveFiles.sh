#!/bin/sh

# リストファイルに従いファイルを圧縮する

TARGET_DIR=/home/pi/work/log
OUTPUT_DIR=/home/pi/work
OUTPUT=${OUTPUT_DIR}/`date +%Y%m%d-%H%M`_.tar.gz

# 圧縮するファイル(.log)のリストを作成
find ${TARGET_DIR} -iregex ".*\.log$" > ${OUTPUT_DIR}/file.list

# リストに従って圧縮(tar.gz)
tar -zcf ${OUTPUT} -T ${TARGET_DIR}/file.list

# リストファイルを削除
rm -rf ${OUTPUT_DIR}/file.list

exit 0
