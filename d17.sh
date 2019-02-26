#!/bin/bash
#author:nick
#date:2019-02-26 11:19:33
#function : message 有报错日志报警

cd /var/log

if [ `echo $?` -eq 0 ]
then
	echo "success enter /var/log"
else
	

	echo "fail to enter that dir "
	exit 1

fi

line=`cat messages|grep fail|wc -l`

if [ $line -gt 0 ]
then
	echo $line

fi
