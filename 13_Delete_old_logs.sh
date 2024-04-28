#!bin/bash

Source_Directory=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $Source_Directory ]
then 
    echo -e "$G Directory is present $N"
else    
    echo -e "$R Directory is not present,please create $N"
    exit 1 
fi

Files=$(find $Source_Directory -name "*.logs" -mtime +14)

echo "Files to Delete : $Files"

while IFS = read -r line
do
    echo "Deleting log files : $line"
done <<< $Files
