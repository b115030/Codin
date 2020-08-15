#!/bin/bash -x
read -p "think of a number between 1 to 100" 
n=50
ul=100 # Initializing upper limit to 100
ll=1 # Initializing lowwer limiy to 1
while [ $n -ge 1 -a $n -le 100 ] # checking if the number is between 1 and 100
do
	echo " greater than or less than or equal to [ g-1 /l-2 /e-3 ? ]" $n # Choose an option 
	read p
	if [ $p -eq 3 ] # If we found the number then stop
	then 
		break
	elif [ $p -eq 1 ] # If greater than
	then
		ll=$n # new Lower limit is the number itself
		num=$((($ul-$n)/2)) # Half of the difference between upper limit and the number
		n=$(($ul-$num)) # subtract this sum from the upper limit
	elif [ $p -eq 2 ] # if less than
	then 
		ul=$n #new upper limit is the number itself
		num=$((($n-$ll) / 2)) # half og the difference between the number and lower limit
		n=$(($ll+$num)) # add this sum to the lower limit
	fi
done
