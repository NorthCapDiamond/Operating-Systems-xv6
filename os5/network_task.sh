#!/usr/bin/sh
echo 1
stress-ng --netlink-task 1 --dccp 1 --timeout 5s --metrics-brief

echo 2
stress-ng --netlink-task 2  --dccp 2 --timeout 5s --metrics-brief

echo 3
stress-ng --netlink-task 3 --dccp 3 --timeout 5s --metrics-brief

echo 4
stress-ng --netlink-task 4 --dccp 4 --timeout 5s --metrics-brief

echo 5
stress-ng --netlink-task 5 --dccp 5 --timeout 5s --metrics-brief

echo 6
stress-ng --netlink-task 6 --dccp 6 --timeout 5s --metrics-brief

echo 7
stress-ng --netlink-task 7 --dccp 7 --timeout 5s --metrics-brief

echo 8
stress-ng --netlink-task 8 --dccp 8 --timeout 5s --metrics-brief
