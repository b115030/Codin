#!/bin/bash -x
read -p "enter the number" n
p=1
i=1
while [ $i -le $n ] # Exectute the loop while i is less than or equal to the number
do
	p=`expr $p \* 2` # Multiply 2 to itslef N times
	echo $p;
	i=$(($i + 1)) # increment the i
done 
