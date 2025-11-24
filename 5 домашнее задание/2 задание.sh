#!/bin/bash
file=$1
filename=${file%%.*}
result="${filename}.$2"
echo "$result"
