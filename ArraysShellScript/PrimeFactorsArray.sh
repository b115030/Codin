#!/bin/bash -x
j=0
read -p "enter the number " n
for (( i=1;i<=n;i++ ))
do
if [ $(( n % i )) -eq 0 ]
then
Prime[((j++))]=$i
fi
done
echo ${Prime[@]}
