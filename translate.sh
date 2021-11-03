#!/bin/bash

count=$(find  -name "*.pdf"|  wc -l)
list=$(find  -name "*.pdf")

function renameTxt {
          printf "%s.txt\n" $1
}

location=$(which python)
echo python path[$location] file_count[$count]

loop_cnt=0
for var in $list
do
let loop_cnt+=1
output=`renameTxt ${var%.pdf}`
echo : [$loop_cnt]$var $output
python ./main.py $var en $output
done
