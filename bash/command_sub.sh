#!/bin/bash
echo "welcome $USER on $HOSTNAME"

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sdal' | awk '{print $4}')

echo "Available free Ram $FREERAM"
echo

echo "Current Load average $LOAD"
echo

echo
echo "Free ROOT patrition size $ROOTFREE"