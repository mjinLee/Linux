#!/bin/bash

file=($(ls))

echo "******일반파일******"

for ((num=0; num<${#file[@]}; num++))
do
	if [ -f ${file[$num]} ]
	then
		echo ${file[$num]}
	fi
done

echo "******디렉토리******"

for ((num=0; num<${#file[@]}; num++))
do
	if [ -d ${file[$num]} ]
	then
		echo ${file[$num]}
	fi
done
