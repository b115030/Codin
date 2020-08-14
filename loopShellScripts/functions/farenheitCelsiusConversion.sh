#!/bin/bash -x

Farenheit2Celsius () {
while [ 1 ]
do
read -p "enter the farenheit degree" F
        if [ $F -le 212 -a $F -ge 32 ]
        then
                break
        else
        echo "enter a number between 32 and 212 "
        fi
   done
c=$(((F-32)*(500/9)))
Quotient=$((c/100))
Remainder=$((c%100))
echo $Quotient"."$Remainder
}
Celsius2Farenheit () {
while [ 1 ]
do
        read -p "enter the celsius degree" c
        if [ $c -le 100 -a $c -ge 0 ]
        then
                break
        else
        echo "enter a number between 0 and 100 "
        fi
   done
F=$(((((c*900)/5)+32)))
Quotient=$((F/100))
Remainder=$((F%100))
echo $Quotient"."$Remainder
}

read -p "1)Farenheit to Celsius 2)Celsius to Farenheit" n
case $n in
1) Farenheit2Celsius 
    ;;

2) Celsius2Farenheit 
   ;;
*) echo"1) Farenheit to Celsius 2) Celsius to Farenheit"
   ;;
esac 
