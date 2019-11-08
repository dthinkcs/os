#!/bin/bash

num=$1

bin=""
while((num  != 0))
do
	dig=$((num%2))
	bin="$dig$bin"
	echo $bin
	num=$((num/2))
done
echo $bin
