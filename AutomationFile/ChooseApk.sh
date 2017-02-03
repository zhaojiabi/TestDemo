#!/bin/sh

#--------------------------------------------------
#    the code is to get the different apk file
#
#
#--------------------------------------------------

#获取星期日期
date_time=`date +%a`
echo $date_time

#根据获取的星期判断具体执行的apk文件
case $date_time in
	一 )
		echo today is Monday;;
	二 )
		echo today is Tuseday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test";;
	三 )
		echo today is Wednesday
		ApkPath="./apk_file/ticktask.apk"
		Tag="UC001";;
	四 )
		echo today is Thurday;;
	五 )
		echo today is Firday;;
	六 )
		echo today is Saturday;;
	日 )
		echo today is Sunday;;
	Mon )
		echo today is Monday;;
	Tue )
		echo today is Tuseday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test";;
	Wed )
		echo today is Wednesday
		ApkPath="./apk_file/ticktask.apk"
		Tag="UC001";;
	Thu )
		echo today is Thurday;;
	Fri )
		echo today is Firday
		ApkPath="./apk_file/ticktask.apk"
		Tag="UC001";;
	Sat )
		echo today is Saturday;;
	Sun )
		echo today is Sunday;;
esac

#获取到传递的参数
CurrentEnvironment=$1
#echo $CurrentEnvironment

#给文件权限，并且执行文件
chmod 777 CreateEnvironmentFile.sh
./CreateEnvironmentFile.sh ${CurrentEnvironment} ${ApkPath} ${Tag}



