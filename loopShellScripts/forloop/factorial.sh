#!/bin/bash -x
fact (){
if [ $n -eq "1" ]
then
	return "1" # Stopping Criteria: Stop when n is 1 and return 1. (1! = 1)
	break;
else
	return $(($n * `fact $(($n-1))`)) #Recursive Criteria: factorial (n)= n* factorial (n-1)
fi
}
read -p "enter the number" n
fact $n # Calling the function
echo $n
