#!/bin/bash -x
Sort () {
echo "Array in original order"
echo ${arr[*]} 
  
# Performing Bubble sort  
for ((i = 0; i<=10; i++)) 
do
      
    for((j = 0; j<=10-i-1; j++)) 
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
        then
            # swap 
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
  
echo "Array in sorted order :"
echo ${arr[*]} 
}

for (( i=1;i<=10;i++ ))
do
n=$(((RANDOM%900)+100))
arr[((i))]=$n
done
echo ${arr[*]}
Sort ${arr[*]} 
j=9
i=2
until [ ${arr[i]} -ne ${arr[1]} -a ${arr[j]} -ne ${arr[10]} ]
do
$((i++))
$((j--))
done
echo "2nd Largest" ${arr[j]} "2nd smallest" ${arr[i]}

