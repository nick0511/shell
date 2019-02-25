#!/bin/bash
#author:nick
#date:2019-02-25 21:09:04
   list=`ls -l /dev/sd*|awk '{print $10}'`
   
   for i in $list
   do
	     `badblocks -v  $i >> $i.test `
	if [ `wc -l $i.info` -gt 0 ]
	then
	      `smartctl -H $i >> $i.info`
	fi
   done
   
	

  
