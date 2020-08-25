#!/bin/bash 
a=0
declare -A CommonBirthday
declare -A Names
declare -A Birthday
for ((i=0;i<50;i++))
do
	Names[$i]=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 4 | head -n 1)
	Birthday[${Names[$i]}]=$(((RANDOM%12)+1))
done
echo "All the names of 50 individual: "
echo ${Names[@]}

for ((i=0;i<12;i++))
do
	k=0
	unset 'CommonBirthday'
	for ((j=0;j<50;j++))
	do
		b=${Names[$j]}
		a=${Birthday[$b]}
		if [ $a -eq $i ]
		then
			CommonBirthday[$k]=$b
			k=$((k+1));
		fi
	done
	echo "People who have same birthday on "$((i+1))"th month :" ${CommonBirthday[@]}
done
