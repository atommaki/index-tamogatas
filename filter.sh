#!/bin/bash

SCRIPT_PATH=$(dirname $0)

HOSTNAME_HASH=$(hostname | md5sum | cut -d' ' -f1)

awk 'BEGIN {p=0; s=0}
     $3!=p || $4!=s {print; p=$3; s=$4}' \
    ~/index-tamogatas.dat > $SCRIPT_PATH/results/${HOSTNAME_HASH}-index-tamogatas.dat.filtered

cat $SCRIPT_PATH/results/*-index-tamogatas.dat.filtered | sort -n -k2 | uniq > results/all-results.dat

