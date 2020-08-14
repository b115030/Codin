#!/bin/bash -x
for (( i=1;i<=10;i++ ))
do
n=$(((RANDOM%900)+100))
Array[((i))]=$n
done
min=1000
max=99
for (( i=1;i<=10;i++ ))
do
if [ ${Array[i]} -gt $max ]
then
max=${Array[i]}
fi
if [ ${Array[i]} -lt $min ]
then
min=${Array[i]}
fi
done
Min2=1000
Max2=0
for (( i=1;i<=10;i++ ))
do
if [ ${Array[i]} -gt $Max2 -a ${Array[i]} -lt $max ]
then
Max2=${Array[i]}
fi
if [ ${Array[i]} -lt $Min2 -a ${Array[i]} -gt $min ]
then
Min2=${Array[i]}
fi
done
echo ${Array[@]} $max $min $Max2 $Min2
