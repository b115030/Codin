#!/bin/bash 
h=0
read -p "enter the n" n
for (( i=1;i<=n;i++ ))
do
	h=$(( $h + ( 1000 / $i ) )) # Multiplied each harmonic coefficient with 1000 to get decimal upto 3 places
done
q=$(( $h / 1000 )); # Store the digit at thousand place differently
r=$(( $h % 1000 )); # Store the ones, tens, and hundred place digits separately
echo $n"th harmonic number is" $q"."$r # Print in the order of Thousand.Hundred tens ones





