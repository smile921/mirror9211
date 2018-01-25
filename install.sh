#!/bin/bash
if [ -e $HOME/disted/ ]
then
    rm -rf $HOME/disted/
fi
mkdir $HOME/disted
wget https://dl.google.com/go/go1.9.2.windows-amd64.msi -P $HOME/disted/
wget https://dl.google.com/go/go1.9.2.src.tar.gz  -P $HOME/disted/
#wget https://dl.google.com/go/go1.9.2.linux-amd64.tar.gz -P $HOME/disted/
#wget https://www.google.com/chrome/browser/thankyou.html?standalone=1&platform=win&installdataindex=defaultbrowser -P $HOME/disted/
ls -alh $HOME/disted/
ls -lh $HOME/disted/*
echo Hello
