#!/bin/bash 
h=0
read -p "enter the n" n
for (( i=1;i<=n;i++ ))
do
h=$(( $h + ( 1000 / $i ) ))
done
q=$(( $h / 1000 ));
r=$(( $h % 1000 ));
echo $n"th harmonic number is" $q"."$r





