#!/bin/bash -x
#Printing numbers which are multiples of 11
count=0
echo "For the range of 0-100"
for ((i=11;i<100;i=i+11)) # Starting from first 2 digit number which has repeated digits; 11 ; and adding 11 until 100
do
	Array[((count++))]=$i # storing it in an Array
done
echo ${Array[@]}




#Printing numbers by checing their ones place and tens place
count=0
for ((i=1;i<100;i++))
do
	Q=$((i/10)) # Storing the digit which is at Tens place
	R=$((i%10)) # Storing the digit which is at ones place
	if [ $Q -eq $R ] # checking if both are equal
	then 
		Array[((count++))]=$i #storing it in array
	fi
done
echo ${Array[@]} # Printing the array
