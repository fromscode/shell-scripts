#!/bin/bash

read -p "Enter a number: " num

flag=0

for ((i=2; i<$((num / 2 + 1)); ++i))
do
    if [ $((num % i)) -eq 0 ]; then
	flag=$(($flag + 1))
    fi
done

if [ $flag -eq 0 ]; then
	echo "$num is prime"
else
	echo "$num is not prime"
fi
