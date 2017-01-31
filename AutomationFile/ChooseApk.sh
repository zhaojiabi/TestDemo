#!/bin/sh

#--------------------------------------------------
#    the code is to get the different apk file
#
#
#--------------------------------------------------


date_time=`date +%a`
echo $date_time

case $date_time in
	一 )
		echo today is Monday;;
	二 )
		echo today is Tuseday
		ApkPath="./apk_file/tuyasmart_tuya1.apk";;
	三 )
		echo today is Wednesday
		ApkPath="./apk_file/ticktask.apk";;
	四 )
		echo today is Thurday;;
	五 )
		echo today is Firday;;
	六 )
		echo today is Saturday;;
	日 )
		echo today is Sunday;;
esac

CurrentEnvironment=$1
#echo $CurrentEnvironment

chmod 777 CreateEnvironmentFile.sh
./CreateEnvironmentFile.sh ${CurrentEnvironment} ${ApkPath}



