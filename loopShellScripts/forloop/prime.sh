#!/bin/bash
flag=0
IsPrime () {
sqrtn=$(bc <<< "scale=0; sqrt(($n))")
for (( i=2;i<=sqrtn;i++ ))
do
if [ $((n % i)) -eq 0 ]
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
IsPrime $n
