#!/bin/bash -x

IsPrime () {
flag=0;
sqrtn=$(bc <<< "scale=0; sqrt(($n))") # Calculating the Square root of the number.
for (( i=2;i<=sqrtn;i++ )) # It has been proved that if there are no factors until square root of a number the number is prime.
do
	if [ $((n % i)) -eq 0 ] # Checking if there are any factors of the number.
	then
		flag=1
	fi
done
if [ $flag -eq 1 ]
then
	return 1 # Not Prime.
elif [ $flag -eq 0 ]
then
	return 0 # Prime
fi
}
PalindromeGenerator (){
number=$n
reverse=0
while [ $number -gt 0 ]
do
	a=`expr $number % 10 ` # Ones place is stored in a
	number=`expr $number / 10 `  # The ones place digit is completely removed from the number
	reverse=`expr $reverse \* 10 + $a`  # The digit stored in a is the LSB now
done
return $reverse
}


while [ 1 ]
do
	read -p "Enter a Prime Number" n
	IsPrime $n #Checking if Number is Prime
	ret=$?
	if [ $ret -eq 0 ]
	then 
		break # If Prime then execution moves forward
	fi 
done
PalindromeGenerator $n # Palindrome of the number is created
Reverse=$?
IsPrime $reverse # the Palindrome is Checked for Prime or not
ret=$?
if [ $ret -eq 0 ] # If the number is Prime
then
	echo "Palindrome of " $n "which is " $reverse "is also Prime"
fi

