#!/usr/bin/sh

echo 1
stress-ng --vm 30 --mmaphuge-mmaps 8192 --prefetch 1 -t 15s --metrics-brief

echo 4
stress-ng --vm 30 --mmaphuge-mmaps 8192 --prefetch 4 -t 15s --metrics-brief

echo 6
stress-ng --vm 30 --mmaphuge-mmaps 8192 --prefetch 6 -t 15s --metrics-brief

echo 8
stress-ng --vm 30 --mmaphuge-mmaps 8192 --prefetch 8 -t 15s --metrics-brief

echo 10
stress-ng --vm 30 --mmaphuge-mmaps 8192 --prefetch 10 -t 15s --metrics-brief



