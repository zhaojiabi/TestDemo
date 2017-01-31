#!/bin/sh


#-----------------------------------------------------------
#   This file is the beginning of the automation demo
#	
#
#-----------------------------------------------------------

echo "自动化测试开始"

#get the current time 
date_time=`date +%Y%m%d%H%M%S`
echo $date_time

#get the directory name
CurrentEnvironment=$date_time".test_environment"
echo $CurrentEnvironment

#确认是否存在相同的目录如果存在就删除
if [ -d "$CurrentEnvironment" ]; then
	rmdir -p "$CurrentEnvironment"
	echo right
fi
#create the current environment directory 
mkdir $CurrentEnvironment

#copyfeature
cp -r features "$CurrentEnvironment"
cp -r apk_file "$CurrentEnvironment"
mkdir $CurrentEnvironment/log

#give the permission to the file and run the file
chmod 777 ChooseApk.sh
./ChooseApk.sh ${CurrentEnvironment}

echo "自动化测试结束"



