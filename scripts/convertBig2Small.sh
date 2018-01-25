#!/bin/bash
#set -e
#set -x
function main{
    listFiles=`ls ./ | more `
    for file in $listFiles
    do
        #ls -lh $file
        size=`du -sm $file | awk '{print $1}'`
        #echo $size
        if test -d $file
        then
            continue
        fi

        if [ $size -gt 28 ]
        then
            $(mkdir_and_split $file 28m )
        fi
    done
}

function mkdir_and_split{
               size=$2
               file=$1
               if test -d __$file
               then
                   echo __$file 'existed';
                   return 1
               fi
               mkdir __$file
               mv $file __$file
               cd __$file
               split -b 28m $file $file
               rm $file
               cd ..
               return 0
}

$(main)
ls . -alh
