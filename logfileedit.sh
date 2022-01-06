#! /bin/bash -x
cp Day3.log.txt logfile.txt
todayDate=$(date +%d-%m-%y)

prefile=''

postfile=''

for file in `ls *.log.txt`

do

        prefile=`echo $file | awk -F. '{print $1}'`

        postfile=`echo $file | awk -F. '{print $2}'`

        mv $file $prefile-$todayDate.$postfile

        echo "file rename successfully"

done
