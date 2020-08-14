#!/bin/bash -x
read -p "Enter n" n
a=1;
for (( i=1;i<=n;i++ ))
do
	a=`expr $a \* 2`; # Multiply 2 with itself N times
	echo $a;
done
