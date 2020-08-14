#!/bin/bash -x
read -p "think of a number between 1 to 100" 
n=50
while [ $n -ge 1 -a $n -le 100 ]
do
	echo " greater than or less than or equal to [ g-1 /l-2 /e-3 ? ]" $n
	read p
	if [ $p -eq 3 ]
	then 
		break
	elif [ $p -eq 1 ]
	then
		n=$(((n+(n/2))/2))
	elif [ $p -eq 2 ]
	then 
		n=$((n / 2))
	fi
done
