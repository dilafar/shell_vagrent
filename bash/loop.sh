#!/bin/bash

MYUSER="alpha beta gama"

for usr in $MYUSER
do
    echo "Adding User : $usr."
    useradd $usr
    id $usr
done