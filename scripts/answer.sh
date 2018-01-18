#!/usr/bin/expect -f
set timeout -1
pwd
ls
spawn  git clone git@gitee.com:mirror921/mirror921.git ../release
expect "*yes"
send "yes\n";
interact
echo Hello
