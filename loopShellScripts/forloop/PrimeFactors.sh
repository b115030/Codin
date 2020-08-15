#!/bin/bash -x
IsPrime () {
flag=0
sqrtn=$(bc <<< "scale=0; sqrt(($j))") # Calculating the square root.
        for (( i=2;i<=sqrtn;i++ )) # Running the loop until square root of the number for efficiency
        do
                if [ $((j % i)) -eq 0 ] # Checking if there are any factors
                then
                        flag=1
                fi
        done
        if [ $flag -eq 1 ]
        then
                return "5" # Not prime.
        elif [ $flag -eq 0 ]
        then
                return "10" # Prime.
        fi
                }
read -p "enter the number " n
for (( j=1;j<=n;j++ ))
do
	if [ $(( n % j )) -eq 0 ] # Checking for factors
	then
	IsPrime $j # Function calling. To check if Prime or not.
	ret=$?
	if [ $ret -eq 10 ] # if Prime
	then
		echo $j; # Print
	fi
fi
done
