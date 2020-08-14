#!/bin/bash -x
a=(-1 -6 -2 -5 0 5 2 3 1 8 9 7)
sorting () {
for (( i=1;i<=12;i++ ))
do
for (( j=0;j<12-i;j++))
do
if [ ${a[$j]} -gt ${a[$j+1]} ]
then
t=${a[$j]}                                                                                                  a[$j]=${a[$j+1]}
a[$j+1]=$t
fi
done
done  
echo ${a[@]}
}
BinarySearch () {

l=0
c=0
u=$(($n-1))
while [ $l -le $u ]
do
mid=$(((( $l+$u ))/2 ))
if [ $s -eq ${a[$mid]} ]
then
c=1
break
elif [ $s -lt ${a[$mid]} ]
then
u=$(($mid-1))
else
l=$(($mid+1))
fi
done
if [ $c -eq 1 ]
then
position=$(($mid+1))”
return 9
else
return 6
fi 
}
j=0
sorting ${a[@]}
for ((i=0;i<13;i++))
do
while [ i-ne j ]
do
s=$((${a[i]}+a[((j++))]))
BinarySearch $s
ret=$?
if [ ret -eq 9 ]
then 
echo ${a[i]} ${a[j]} ${a[position]}
fi
done
done

