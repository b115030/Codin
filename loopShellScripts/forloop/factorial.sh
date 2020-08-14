#!/bin/bash -x
fact (){
if [ $n -eq "0" ]
then
 return "1"
break;
else
return $(($n * `fact $(($n-1))`))
fi
}
read -p "enter the number" n
fact $n
echo $n
