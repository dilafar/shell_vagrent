#!/bin/bash

read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100]
then
    echo "entered into condition statement"
    sleep 3
    echo "Your number is greater than 100"
    echo
    date
else
    echo "Your number is less than 100"
fi

echo "script execution completed successfully."