#!/bin/bash

valu=("PASS_MIN_LEN" "PASS_MAX_LEN" "UID_MIN" "UID_MAX")

for ((num=0; num<${#valu[@]}; num++))
do
	cat /etc/login.defs | grep -v '^#' | grep ${valu[$num]}
done
