#!bin/bash

Movies=("xxx" "xnxx" "xvideos" "kamasutra")#Space is important between arrays

#size of above array is 4
#index of above array is 0,1,2,3

#list of array always starts with "0"

echo "Movie1 is : ${Movies[0]}"
echo "Movie1 is : ${Movies[1]}"
echo "Movie1 is : ${Movies[2]}"

#if u want to list all array values that use "@"

echo "All list of movies are below"

echo "Movie1 is : ${Movies[@]}"
