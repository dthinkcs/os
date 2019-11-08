n1=$1
n2=$2

if ((n1 > n2 ))
then
	tmp=$n1
	n1=$n2
	n2=$tmp
fi

gcd=1
for (( i = n1; i >= 1; i = i - 1 ))
do
	if (( (( n2 % i )) == 0 && (( n1 % i )) == 0 ))
	then
		gcd=$i
		break
	fi
done
echo $gcd
