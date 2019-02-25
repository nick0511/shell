#!/bin/bash
#author:nick
#date:2019-02-24 19:11:06

	count=1
for i in `df -h|awk '{print $5}'|awk -F% '{print $1}'|grep "[[:digit:]]"`
do
	let count=$count+1
	if [ $i -gt 80 ]
	then
		echo "Warn ! 以下的盘使用率大于80%"
		echo `df -h|head -$count|tail -1|awk '{print $1}'`
		
	fi
done 
