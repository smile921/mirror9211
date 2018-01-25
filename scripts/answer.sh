#!/usr/bin/expect -f
#HOME=$1
#HOME=/home/travis
#echo $HOME
set timeout -1
pwd
spawn  git clone git@gitee.com:mirror921/mirror921.git /home/travis/release
expect "*yes"
send "yes\n";
interact
pwd
