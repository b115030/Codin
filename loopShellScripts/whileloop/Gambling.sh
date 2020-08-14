#!/bin/bash -x
n=100
while [ $n -ge 0 -o $n -le 200 ]
do
p=$((RANDOM%2))
if [ $p -eq 0 ]
then
c=$((c+1))
n=$((n-1))
elif [ $p -eq 1 ]
then
q=$((q+1))
n=$((n+1))
fi
done
echo "No. of losses" $c "No. of Wins" $q
