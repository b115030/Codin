#!/bin/bash -x
c=0
q=0
while [ $c -lt 11 -a $q -lt 11 ]
do
n=$((RANDOM%2))
if [ $n -eq 0 ]
then
c=$((c+1))
elif [ $n -eq 1 ]
then
q=$((q+1))
fi
done
echo "Heads " $c " Tails " $q
