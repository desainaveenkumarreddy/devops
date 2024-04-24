#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)  # File name delimiting with ''.'' (ex:8_Functions.sh--->8_Functions)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R=\e[31m
G=\e[32m
Y=\e[33m

echo "Script started Time Stamp is : $TIMESTAMP"

VALIDATE(){
    #echo "Exit Status : $1"
    #echo "What Command is doing : $2"
    if [ $1 -ne 0 ]
    then  
        echo "$2...FAILURE "
        exit 1
    else 
        echo "$2... SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Ur not root user to run this command"
    exit 1  # exit command is used to come back manually if the abive command get failed
else 
    echo "U are root user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? 'Installing MYSQL SERVER'

dnf install git -y &>>$LOGFILE
VALIDATE $? 'Installing GIT'