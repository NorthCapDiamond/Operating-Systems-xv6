#!/usr/bin/sh

echo 1
stress-ng --cpu 1 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief

echo 2
stress-ng --cpu 2 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief

echo 3
stress-ng --cpu 3 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief

echo 4
stress-ng --cpu 4 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief

echo 5
stress-ng --cpu 5 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief

echo 6
stress-ng --cpu 6 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief

echo 7
stress-ng --cpu 7 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief

echo 8
stress-ng --cpu 8 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief

echo 9
stress-ng --cpu 9 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief

echo 10
stress-ng --cpu 10 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief

echo 11
stress-ng --cpu 11 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief

echo 12
stress-ng --cpu 12 --cpu-method gamma --cpu-method union --timeout 5s --metrics-brief



