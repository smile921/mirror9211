#!/bin/bash
#set -e
#set -x
#echo $1
if [ -e ../release ]
then
    rm -rf ../release
fi
mkdir ../release/
#cp -rf ./* ../release/
cd ../release/
#git init .
#git remote add origin  git@gitee.com:mirror921/mirror921.git
#git remote add origin  https://gitee.com/mirror921/mirror921.git
git clone https://mirror921:$1@gitee.com/mirror921/mirror921.git ./
git config --global user.email "lanyi921@qq.com"
git config --global user.name "Travis CI"
cp -rf ../disted/* ./
git add -A
git commit -m "Travis CI Release"
git push -f origin +master:refs/heads/master
cd ../disted/
