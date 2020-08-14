#!/bin/bash -x
GeneratePrime (){
	for (( j=$lb;j<=$ub;j++ ))
	do
		IsPrime $j
		num=$?
		if [ $num -eq 10 ]
		then 
				echo $j
		fi
	done
}
IsPrime () {
flag=0
sqrtn=$(bc <<< "scale=0; sqrt(($j))")
	for (( i=2;i<=sqrtn;i++ ))
	do
		if [ $((j % i)) -eq 0 ]
		then
			flag=1
		fi
	done
	if [ $flag -eq 1 ]
	then
		return "5"
	elif [ $flag -eq 0 ]
	then
		return "10"
	fi
		}
while [ 1 ]
do
	read -p "enter the lower bound" lb
	read -p "enter the upper bound" ub
	if [ $lb -lt $ub ]
	then
		break
	else
		echo lower bound should be less than upper bound
	fi
done


GeneratePrime $lb $ub

