#!/bin/bash -x
a=(-1 -6 -2 -5 0 5 2 3 1 8 9 7) #Array Initialization
sorting () { # Sorting Algorithm
for (( i=1;i<=12;i++ ))
do
	for (( j=0;j<12-i;j++)) #start from last
	do
		if [ ${a[$j]} -gt ${a[$j+1]} ]
		then
			#Swap
			t=${a[$j]}
			a[$j]=${a[$j+1]}
			a[$j+1]=$t
		fi
	done
done  
echo ${a[@]}
}

j=0
sorting ${a[@]}
for ((i=0;i<13;i++))
do
	l=$((i+1)) # l points to the posittion next to the current element
	r=11 # r is initialized to the last position
	x=${a[i]} # Current element
	while [ $l -lt $r ] # So that l pointer and r pointer doesn't cross each other
	do
		num=`echo $x+${a[l]}+${a[r]} | bc` # adding negative numbers using bc
		if [ $num -eq 0 ] # If equal to zero then we found our 3 numbers
		then
			echo $x " " ${a[l]} " " ${a[r]} # Print the 3 numbers
			l=$((l+1)) # Increase the l to point to next location
			r=$((r-1)) # Increase the r pointer to next location
			flag=1	
		elif [ $num -lt 0 ] # If the sum is less than zero then we need a bigger number; So move the l pointer ahead
		then
			l=$((l+1))
		else
			r=$((r-1)) # If the sum is more than zero then we need a smaller number ; so move the r pointer back
		fi
	done
done
if [ $flag -eq 0 ]
then
	echo "No group of numbers have sum 0"

fi

