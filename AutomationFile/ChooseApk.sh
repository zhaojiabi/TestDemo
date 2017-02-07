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
		echo today is Monday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test1";;
	二 )
		echo today is Tuseday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test2";;
	三 )
		echo today is Wednesday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test3";;
	四 )
		echo today is Thurday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test4";;
	五 )
		echo today is Firday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test5";;
	六 )
		echo today is Saturday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test6";;
	日 )
		echo today is Sunday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test7";;
	Mon )
		echo today is Monday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test1";;
	Tue )
		echo today is Tuseday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test2";;
	Wed )
		echo today is Wednesday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test3";;
	Thu )
		echo today is Thurday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test4";;
	Fri )
		echo today is Firday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test5";;
	Sat )
		echo today is Saturday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test6";;
	Sun )
		echo today is Sunday
		ApkPath="./apk_file/ticktask.apk"
		Tag="Test7";;
esac

#获取到传递的参数
CurrentEnvironment=$1
#echo $CurrentEnvironment

#给文件权限，并且执行文件
chmod 777 CreateEnvironmentFile.sh
./CreateEnvironmentFile.sh ${CurrentEnvironment} ${ApkPath} ${Tag}



