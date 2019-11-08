#!/bin/bash

num=$1
copy=$num
len=${#num}
res=0
while (( copy != 0 ))
do
	dig=copy%10
	res=$((res + dig**len))
	copy=$(( copy/10 ))

done
echo $res
if (( res == num )) 
then
	echo "Armstrong"
else
	echo "Not Armstrong"
fi

