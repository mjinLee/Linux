#!/bin/bash

awk -F ':' '$3 >= 1000 && $3 < 60000 { print $1, $3 }' /etc/passwd

read -p "계정 추가 1, 계정 삭제 2 : " input

if [ $input = 1 ]
then
	read -p "추가 계정명 : " user
	useradd $user
	read -p "$user의 UID" uid
	usemod --uid $uid $user
elif [ $input = 2 ]
then
	read -p "삭제 겨정명 : " user
	userdel $user
else
	echo "잘못된 입력"
fi
