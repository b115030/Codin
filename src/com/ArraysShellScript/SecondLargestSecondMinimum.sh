#!/bin/bash -x
for (( i=1;i<=10;i++ )) # Randomly generating an array with 10 elements which are 3 digit numbers
do
	n=$(((RANDOM%900)+100))
	Array[((i))]=$n
done
min=1000
max=99
for (( i=1;i<=10;i++ ))
do
	if [ ${Array[i]} -gt $max ] # If a number is greater than max
	then
		max=${Array[i]} # the new max element is the number itself
	fi
	if [ ${Array[i]} -lt $min ] # If a number is smaller than min
	then
		min=${Array[i]} # tthe new min element is the number itself
	fi
done
# max and min now contain the largest and smallest element of the array
# for second largest and second minimum
Min2=1000
Max2=0 
for (( i=1;i<=10;i++ ))
do
	if [ ${Array[i]} -gt $Max2 -a ${Array[i]} -lt $max ] #If a number is greater than Max2 and less than max
	then
		Max2=${Array[i]} # the new Max2 is the number itself
	fi
	if [ ${Array[i]} -lt $Min2 -a ${Array[i]} -gt $min ] # If a number is smaller than Min2 and greater than min
	then
		Min2=${Array[i]} # the new Min2 is the number itself
	fi
done
# Max2 and Min2 have the second largest and second minimum element stored respectively
echo ${Array[@]} $max $min $Max2 $Min2
