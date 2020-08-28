#!/bin/bash
flag=0
IsPrime () {
sqrtn=$(bc <<< "scale=0; sqrt(($n))") # Calculating the square root
for (( i=2;i<=sqrtn;i++ )) #Iterating until square root of the number for efficiency
do
	if [ $((n % i)) -eq 0 ] # Checking for factors
	then 
		flag=1
	fi
done
if [ $flag -eq 1 ]
then
	echo "composite"
elif [ $flag -eq 0 ]
then 
	echo "prime"
fi
}
read -p "enter the number " n
IsPrime $n # Calling the function 
