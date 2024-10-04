#!/bin/bash

echo "############################################"
date
echo

ls /var/run/httpd/httpd.pid &> /dev/null

#if [ -f /var/run/httpd/httpd.pid ]

if [ $? -eq 0 ]
then
    echo "Httpd process is running..."
else
    echo "Httpd process is not running..."
    echo "Starting the process..."
    systemctl start httpd
    if [ $? -eq 0 ]
    then
        echo "process started successfully..."
    else
        echo "process failed to start..."
    fi
fi