nums=($@)

for num in ${nums[@]}
do
	echo $num
done


for (( i = 0; i < ${#nums[@]}; i++ ))
do
	echo ${nums[i]}
done


arrB=("${nums[@]}")
for (( i = 0; i < ${#arrB[@]}; i++ ))
do
	d=${arrB[i]}
	arrB[i]=$((arrB[i]+1))
done


arrC=("${arrB[@]}")
for (( i = 0; i < ${#arrC[@]}; i++ ))
do 
	echo ${arrC[i]}
done

#echo ${arrC[@]}
