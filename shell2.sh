#!/bin/bash

file=($(ls))

for (( num=0; num<${#file[@]}; num++ ))
do
	echo ${file[$num]}
	chmod 777 ${file[$num]}
done

