#!/bin/bash -x
read -p "enter number to check amstong number: " n
temp=$n
sum=0
while [ $temp -gt 0 ]
do
	r=$(($temp%10));
	sum=$(($sum + $(($r**3))));
	temp=$(($temp/10));
	echo $sum
done

if [ $n -eq $sum ]
then
	echo "$temp is amstrong number"
else
	echo "$temp not a amostrong number"
fi

