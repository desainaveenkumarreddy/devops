#!bin/bash

echo "All Variables : $@"
echo "Number of variables passwed : $#"
echo "Script Name : $0"
echo "Current Working Directory : $PWD"
echo "Home Directory of current user : $HOME"
echo "Which user is running this script : $USER"
echo "Hostname : $HOSTNAME"
echo "Process ID for current running script : $$"
echo "Process ID for last background command : $!"  