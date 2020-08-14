#!/bin/bash -x
c=0
q=0
while [ $c -lt 11 -a $q -lt 11 ] # Checking until either Heads or Tails wins 11 times.
do
n=$((RANDOM%2)) # generating random numbers
if [ $n -eq 0 ] # Assigning 0 as Heads
then
c=$((c+1)) # Counting the number of heads
elif [ $n -eq 1 ] # Assigning 1 as Tails
then
q=$((q+1)) # Counting the number of Tails
fi
done
echo "Heads " $c " Tails " $q
