#!/bin/bash
#author:nick
#date:2019-02-26 10:38:47
#function : 没有10.0.0.1路由则报警

if [ `route -n|awk '{if($1=="10.0.0.1"){print $1}}'|wc -l` -eq 0 ]
then 
	echo 没有10.0.0.1路由
fi
