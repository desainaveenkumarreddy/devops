#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )
    FOLDER=$(echo $line | awk -F " " '{print $NF}')

    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        Message+="$FOLDER is Grater than THRESHOLD , Current Usage is : $USAGE \n" 
        # + is for not overwriting the output and getting old and new logs 
        # \n is for getting output line by line instud of single line
    fi

done <<< $DISK_USAGE

echo -e "Message : $Message"
# -e is used to end as special characters

echo "$MESSAGE" | mail -s "Disk Usage Alert" info@joindevops.com

# echo "body" | mail -s "subject" to-address