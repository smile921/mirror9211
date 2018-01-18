#!/bin/bash
if [ -e ./disted/ ]
then
    rm -rf ./disted/
fi
mkdir ./disted
wget https://dl.google.com/go/go1.9.2.windows-amd64.msi -P ./disted/
wget https://dl.google.com/go/go1.9.2.src.tar.gz  -P ./disted/
#wget https://dl.google.com/go/go1.9.2.linux-amd64.tar.gz -P ./disted/
#wget https://www.google.com/chrome/browser/thankyou.html?standalone=1&platform=win&installdataindex=defaultbrowser -P ./disted/
ls -alh ./disted/
ls -lh ./disted/*
echo Hello
