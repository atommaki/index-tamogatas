#!/bin/bash

awk 'BEGIN {p=0; s=0}
     $3!=p || $4!=s {print; p=$3; s=$4}' \
    ~/index-tamogatas.dat > ~/index-tamogatas.dat.filtered

