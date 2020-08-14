#!/bin/bash -x

IsPrime () {
flag=0;
sqrtn=$(bc <<< "scale=0; sqrt(($n))")
for (( i=2;i<=sqrtn;i++ ))
do
if [ $((n % i)) -eq 0 ]
then
flag=1
fi
done
if [ $flag -eq 1 ]
then
return 1
elif [ $flag -eq 0 ]
then
return 0
fi
}
PalindromeGenerator (){
number=$n
reverse=0
while [ $number -gt 0 ]
do
a=`expr $number % 10 `
number=`expr $number / 10 `
reverse=`expr $reverse \* 10 + $a`
done
return $reverse
}


while [ 1 ]
do
	read -p "Enter a Prime Number" n
	IsPrime $n
	ret=$?
	if [ $ret -eq 0 ]
	then 
		break
	fi 
done
PalindromeGenerator $n
Reverse=$?
IsPrime $reverse
ret=$?
if [ $ret -eq 0 ]
then
	echo "Palindrome of " $n "which is " $reverse "is also Prime"
fi

