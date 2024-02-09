#!/usr/bin/sh

echo 5
stress-ng --iomix 5  -t 10s

echo 10
stress-ng --iomix 10  -t 10s

echo 15
stress-ng --iomix 15  -t 10s

echo 20
stress-ng --iomix 20  -t 10s

echo 25
stress-ng --iomix 25  -t 10s
