#!/bin/bash -x
read -p "Enter n" n
a=1;
for (( i=1;i<=n;i++ ))
do
a=`expr $a \* 2`;
echo $a;
done
