#!/bin/sh
ROOT_PATH="/sdcard"
CMD="/vendor/bin/myftm"
rm $ROOT_PATH/myftm_result.txt
while read line
do
    $CMD $line >> $ROOT_PATH/myftm_result.txt 2>&1
done < $ROOT_PATH/myftm_para.txt
setprop vendor.sys.myftm 0
exit 0
