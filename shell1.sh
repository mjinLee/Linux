#!/bin/bash

num=$(cat /etc/passwd | grep -c ^$1)

#echo $num

if [ $num = 0 ]
then
	useradd $1
else
	userdel $1
fi
