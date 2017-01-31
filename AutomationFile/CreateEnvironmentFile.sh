#!/bin/sh

#--------------------------------------------------
#    create environment file
#
#
#--------------------------------------------------
#获取传过来的参数
CurrentEnvironment=$1
ApkPath=$2
echo $ApkPath

cp -r apk_file "$CurrentEnvironment"
#mkdir $CurrentEnvironment/log

# 进入到指定目录
cd ./$CurrentEnvironment
#pwd

#apk重新签名
calabash-android resign $ApkPath

#开始安装启动apk，开始测试
#calabash-android build $ApkPath
#calabash-android run $ApkPath -v --tags @Test --format html --out reports.html
#calabash-android run $ApkPath --tags @Test --format html --out reports.html

