#!/bin/bash
declare -i DiceCount #Declaring a Dictinary
findmaxmin(){
	min=11
	max=0
for (( i=0;i<=6;i++ ))
do
	a=${DiceCount[i]}
	echo $a
	if [ $a -gt $max ] # If a number is greater than max
	then
		max=${DiceCount[i]} # the new max element is the number itself
		maxindex=$i
	fi
	if [ $a -lt $min ] # If a number is smaller than min
	then
		min=${DiceCount[i]} # tthe new min element is the number itself
		minindex=$i
	fi
done
}
i=0
a=0
while [ $a -lt 10 ]
do
	i=$(((RANDOM%6)+1))
	DiceCount[$i]=$((DiceCount[$i]+1))
	a=${DiceCount[i]}
done
echo ${DiceCount[@]}
findmaxmin 
echo "The Maximum digit rolled is "$maxindex " and the minimum digit rolled is "$minindex
