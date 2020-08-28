#!/bin/bash -x

Farenheit2Celsius () {
while [ 1 ] #Infinite loop until we get a number between 32 and 212
do
read -p "enter the farenheit degree" F
        if [ $F -le 212 -a $F -ge 32 ] # Check whether the no. is between 32 and 212
        then
                break # Come out of the loop and the execution moves forward
        else
        echo "enter a number between 32 and 212 " # If not then this message will keep on showing until the condition is met
        fi
   done
c=$(((F-32)*(500/9))) # Farenheit to Celsius Conversion formulae. Multiplied by 100 for 2 decimal places
Quotient=$((c/100)) # Store the hundreds place digit separately
Remainder=$((c%100)) # Store the ones and tens place digit separately
echo $Quotient"."$Remainder # Print in the order Hundreds.Tens Ones
}
Celsius2Farenheit () {
while [ 1 ] #Infinite loop until we get a number between 0 and 100
do
        read -p "enter the celsius degree" c 
        if [ $c -le 100 -a $c -ge 0 ] # Check whether the no. is between 0 and 100
        then
                break # Come out of the loop and the execution moves forward
        else
        echo "enter a number between 0 and 100 " # If not then this message will keep on showing until the condition is met
        fi
   done
F=$(((((c*900)/5)+32))) # Celsius to Farenheit Conversion formulae. Multiplied by 100 for 2 decimal places
Quotient=$((F/100)) # Store the hundreds place digit separately
Remainder=$((F%100)) # Store the ones and tens place digit separately
echo $Quotient"."$Remainder # Print in the order Hundreds.Tens Ones
}

read -p "1)Farenheit to Celsius 2)Celsius to Farenheit" n # Choose an option
case $n in
1) Farenheit2Celsius  # Function is called for Farenheit to Celsius conversion
    ;;

2) Celsius2Farenheit  # Function is called for Celsius to Farenheit conversion
   ;;
*) echo"1) Farenheit to Celsius 2) Celsius to Farenheit" #default statement
   ;;
esac 
