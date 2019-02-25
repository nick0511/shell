#!/bin/bash
#author:nick
#date:2019-02-25 20:30:19
#function : ssh三次不通报警

ipn=`ifconfig|awk '{if($1=="inet"&&$2!="127.0.0.1"){print $2}}'|head -1`
i=0
a="no"
until [ $i -ge 3 ] || [[   $a == "pass" ]]
do
	a=`telnet $ipn 22 |head -2|sed -n '2p'|awk '{if($1~"Connect"){print "pass"}}'`
	echo $a
	let i+=1
done
if [ $i -lt 3 ]
then
	echo ssh success
	exit 0
else
	echo ssh 不通
fi
	
