#!/bin/bash -x
# To print the prime numbers
GeneratePrime (){
	for (( j=$lb;j<=$ub;j++ )) # from lower bound till upper bound
	do
		IsPrime $j # Check if the numbers are Prime.
		num=$?
		if [ $num -eq 10 ] # If the number is Prime.
		then 
				echo $j
		fi
	done
}
# To check if a given number is Prime.
IsPrime () {
flag=0
sqrtn=$(bc <<< "scale=0; sqrt(($j))") # Calculating the Square root of the number.
	for (( i=2;i<=sqrtn;i++ )) # It has been proved that if there are no factors until square root of a number the number is prime.
	do
		if [ $((j % i)) -eq 0 ] # Checking if there are any factors of the number.
		then
			flag=1
		fi
	done
	if [ $flag -eq 1 ]
	then
		return "5" # Not Prime.
	elif [ $flag -eq 0 ]
	then
		return "10" # Prime.
	fi
		}
while [ 1 ] # Infinite loop. Execution moves forward when the condition below is met.
do
	read -p "enter the lower bound" lb
	read -p "enter the upper bound" ub
	if [ $lb -lt $ub ] # Condition. The lower bound should be less than the upper bound.
	then
		break
	else
		echo lower bound should be less than upper bound
	fi
done

# Function call
GeneratePrime $lb $ub

