#!/bin/bash -x
#Printing numbers which are multiples of 11
count=0
echo "For the range of 0-100"
for ((i=11;i<100;i=i+11))
do
Array[((count++))]=$i
done
echo ${Array[@]}




#Printing numbers by checing their ones place and tens place
count=0
for ((i=1;i<100;i++))
do
Q=$((i/10))
R=$((i%10))
if [ $Q -eq $R ]
then 
Array[((count++))]=$i
fi
done
echo ${Array[@]}
