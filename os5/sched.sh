#!/usr/bin/sh

stress-ng --schedpolicy 4 --sched-prio 0 -t 5s --metrics-brief

stress-ng --schedpolicy 8 --sched-prio 0 -t 5s --metrics-brief

stress-ng --schedpolicy 10 --sched-prio 0 -t 5s --metrics-brief

stress-ng --schedpolicy 16 --sched-prio 0 -t 5s --metrics-brief

stress-ng --schedpolicy 20 --sched-prio 0 -t 5s --metrics-brief

stress-ng --schedpolicy 30 --sched-prio 0 -t 5s --metrics-brief