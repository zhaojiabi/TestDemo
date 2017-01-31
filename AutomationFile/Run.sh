#!/bin/sh

#setconfigure
date_time=`date +%Y%m%d%H%M%S`
echo $date_time

CurrentEnvironment=$date_time".test_environment"
echo $CurrentEnvironment
ApkPath="./apk_file/ticktask.apk"

#copyfeature
if [ -d "$CurrentEnvironment" ]; then
	rmdir -p "$CurrentEnvironment"
	echo right
fi
mkdir $CurrentEnvironment

cp -r features "$CurrentEnvironment"
cp -r apk_file "$CurrentEnvironment"
mkdir $CurrentEnvironment/log
#cp -r features\suppstep_definitionsort\* %CurrentEnvironment%\features\support\ /E /Y

cd ./$CurrentEnvironment
#pwd
calabash-android resign $ApkPath
#calabash-android build $ApkPath
calabash-android run $ApkPath -v --tags @Test --format html --out reports.html