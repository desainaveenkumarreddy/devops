#!bin/bash

Number=$1

if [$Number -gt 18]
then
    echo "Given Number : $Number is grater than 18"
else
    echo "Given Number : $Number is less than 18"
fi