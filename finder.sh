#! /bin/bash
echo "What file do you want to find?"
read filename
where=$(pwd)
cd /home/$(whoami)
value=$(find "$(cd ..; pwd)" -name ${filename} | head -n 1)

if [ ${value} ] 
then
    echo "Exists ${value}"
elif [ -d ${value} ]
then
    echo "Exists ${value}"
else
    echo "Does not exist"
fi
