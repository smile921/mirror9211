#!/usr/bin/expect -f
HOME=$1
echo $HOME
set timeout -1
pwd
spawn  git clone git@gitee.com:mirror921/mirror921.git $HOME/release
expect "*yes"
send "yes\n";
interact
pwd
