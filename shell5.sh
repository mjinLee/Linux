#!/bin/bash

file=($(find ./ -name 'shell*'))

#file=($(find ./ -perm 744))
#file=($(find ./ -user ubuntu))

for ((num=0; num<${#file[@]}; num++))
do
#	chown root
#	rm
done

