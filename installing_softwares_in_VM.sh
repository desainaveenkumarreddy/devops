#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Ur not root user to run this command"
    exit 1  # exit command is used to come back manually if the abive command get failed

else 
    echo "U are root user"
fi

dnf install mysqll -y 

if [ $? -ne o ]
then
    echo "MYSQUL installation failed....."
    exit 1
else 
    echo "Successfully SQL Installed"
fi
