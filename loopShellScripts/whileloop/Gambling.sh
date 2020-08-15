#!/bin/bash -x
n=100
while [ $n -ge 0 -o $n -le 200 ] # Executing the loop until either the total amount is 0 or 200
do
p=$((RANDOM%2)) # Randomly deciding win or loss
if [ $p -eq 0 ] # Assigning 0 to Loss and Checking for Loss
then
c=$((c+1)) # Counting no. of Losses
n=$((n-1)) # Reducing from Total amount
elif [ $p -eq 1 ] # Assigning 1 to Win and checking for wins
then
q=$((q+1)) # Counting no. of wins
n=$((n+1)) # Increasing Total amount 
fi
done
echo "No. of losses" $c "No. of Wins" $q
