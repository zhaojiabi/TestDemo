#!/bin/sh

#--------------------------------------------------
#    copy apk file and run the test
#
#
#--------------------------------------------------


#获取传过来的参数
CurrentEnvironment=$1
ApkPath=$2
Tag=$3
echo $ApkPath
echo $Tag

cp -r apk_file "$CurrentEnvironment"
mkdir $CurrentEnvironment/log

# 进入到指定目录
cd ./$CurrentEnvironment
#pwd

#apk重新签名
calabash-android resign $ApkPath

#开始安装启动apk，开始测试
#calabash-android build $ApkPath
#calabash-android run $ApkPath -v --tags @Test --format html --out reports.html
#calabash-android run $ApkPath --tags @Test --format html --out reports.html
#calabash-android run $ApkPath --tags @$Tag --format html --out reports.html








