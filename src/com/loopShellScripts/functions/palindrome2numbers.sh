#!/bin/bash -x
PalindromeGenerator (){
number=$1 #The first number
reverse1=0
while [ $number -gt 0 ]
do
	a=`expr $number % 10 ` # Ones place is stored in a
	number=`expr $number / 10 ` # The ones place digit is completely removed from the number
	reverse1=`expr $reverse1 \* 10 + $a` # The digit stored in a is the LSB now
done

number=$2 # The second number
reverse2=0
while [ $number -gt 0 ]
do
	a=`expr $number % 10 ` # Ones place is stored in a
	number=`expr $number / 10 ` # The ones place digit is completely removed from the number   
	reverse2=`expr $reverse2 \* 10 + $a` # The digit stored in a is the LSB now 
done
return $reverse1 $reverse2 # Return bothe the reversed numbers
}
read -p "enter the numbers" n
read p
PalindromeGenerator $n $p # Functions Called
echo $reverse1 $reverse2

