for file in $@
do
	if [ -e "$file" ]
	then
		echo "$file exists."
	else
		echo "$file does NOT exist."
	fi
done

