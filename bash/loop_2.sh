#!/bin/bash

counter=0

while [ $counter -lt 5 ]
do
    echo "loop.."
    echo "value : $counter."
    counter=$(( $counter + 1 ))
    sleep 1
done

echo "out of loop"