#!bin/bash

USERID=$(id -u)

VALIDATE(){
    #echo "Exit Status : $1"
    #echo "What Command is doing : $2"
    if [ $1 -ne o]
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

dnf install mysql -y 
VALIDATE $1 'Installing MYSQL SERVER'

dnf install git -y
VALIDATE $1 'Installing GIT'