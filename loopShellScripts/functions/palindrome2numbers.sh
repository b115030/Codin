#!/bin/bash -x
PalindromeGenerator (){
number=$1
reverse1=0
while [ $number -gt 0 ]
do
a=`expr $number % 10 `
number=`expr $number / 10 `
reverse1=`expr $reverse1 \* 10 + $a`
done

number=$2
reverse2=0
while [ $number -gt 0 ]
do
a=`expr $number % 10 `
number=`expr $number / 10 `
reverse2=`expr $reverse2 \* 10 + $a`
done
return $reverse1 $reverse2
}
read -p "enter the numbers" n
read p
PalindromeGenerator $n $p
echo $reverse1 $reverse2
