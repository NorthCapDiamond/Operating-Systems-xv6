#!/usr/bin/sh

echo 1
stress-ng --oom-pipe 1 --pipe-data-size 4 -t 5s --metrics-brief --pathological

echo 2
stress-ng --oom-pipe 2 --pipe-data-size 5 -t 5s --metrics-brief --pathological

echo 3
stress-ng --oom-pipe 3 --pipe-data-size 6 -t 5s --metrics-brief --pathological

echo 4
stress-ng --oom-pipe 4 --pipe-data-size 7 -t 5s --metrics-brief --pathological

echo 5
stress-ng --oom-pipe 5 --pipe-data-size 8 -t 5s --metrics-brief --pathological

echo 6
stress-ng --oom-pipe 6 --pipe-data-size 9 -t 5s --metrics-brief --pathological

echo 7
stress-ng --oom-pipe 7 --pipe-data-size 10 -t 5s --metrics-brief --pathological

echo 8
stress-ng --oom-pipe 8 --pipe-data-size 12 -t 5s --metrics-brief --pathological