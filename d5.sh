#!/bin/bash
#author:nick
#date:2019-02-25 20:47:14
   list=`ls -l /dev/sd*|awk '{print $10}'`
   
   for i in $list
   do
           result=`smartctl -H /dev/sda1|grep "SMART Health"|awk -F': ' '{print $2}'`
	     if [ $result == "error" ]
	     then
	     	echo "$i error"  

	     else 
		echo "$i Health"
	     fi
   done

  
