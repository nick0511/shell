#!/bin/bash
#author:nick
#date:2019-02-25 19:04:17
#function: 监控http进程状态
	
result=`service httpd status|grep "active"|awk -F: '{if($2~"inactive"){print 1} else{print 2}}'` >>/dev/null

	if [ $result -eq 1 ]
	then 
		echo httpd 服务异常
	fi
