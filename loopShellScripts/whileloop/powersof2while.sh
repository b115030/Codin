#!/bin/bash -x
read -p "enter the number" n
p=1
i=1
while [ $i -le $n ]
do
p=`expr $p \* 2`
echo $p;
i=$(($i + 1))
done 
