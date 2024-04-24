#!bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-H-%M-%S)
SCRIPT_NAME=$(echo $0 |cut -d '.' -f1)  # File name delimiting with ''.'' (ex:8_Functions.sh--->8_Functions)
LOCAL_FILE=/temp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
    #echo "Exit Status : $1"
    #echo "What Command is doing : $2"
    if [ $1 -ne 0 ]
    then  
        echo " $2 is ...FAILURE "
        exit 1
    else 
        echo " $1 is ... SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Ur not root user to run this command"
    exit 1  # exit command is used to come back manually if the abive command get failed
else 
    echo "U are root user"
fi

dnf install mysql -y &>>$LOCAL_FILE
VALIDATE $1 'Installing MYSQL SERVER'

dnf install git -y &>>$LOCAL_FILE
VALIDATE $1 'Installing GIT'