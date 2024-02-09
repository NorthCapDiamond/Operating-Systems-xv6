#!/usr/bin/sh

echo workers 5
sudo perf stat -e cache-misses -e cache-references stress-ng --cache 5 --l1cache-sets 1 --l1cache-line-size 64 --timeout 10 --metrics-brief
echo workers 10
sudo perf stat -e cache-misses -e cache-references stress-ng --cache 10 --l1cache-sets 1 --l1cache-line-size 64 --timeout 10 --metrics-brief
echo workers 15
sudo perf stat -e cache-misses -e cache-references stress-ng --cache 15 --l1cache-sets 1 --l1cache-line-size 64 --timeout 10 --metrics-brief
echo workers 20
sudo perf stat -e cache-misses -e cache-references stress-ng --cache 20 --l1cache-sets 1 --l1cache-line-size 64 --timeout 10 --metrics-brief
echo workers 25
sudo perf stat -e cache-misses -e cache-references stress-ng --cache 25 --l1cache-sets 1 --l1cache-line-size 64 --timeout 10 --metrics-brief
echo workers 30
sudo perf stat -e cache-misses -e cache-references stress-ng --cache 30 --l1cache-sets 1 --l1cache-line-size 64 --timeout 10 --metrics-brief

