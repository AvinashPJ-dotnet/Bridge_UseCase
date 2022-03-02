#!/bin/bash -x
read -p "enter the size of array" size
for ((i=0;i<$size;i++))
do
	read -p "enter element for index $i: " data
	arr[$i]=$data
done
arrSize=${#arr[@]}
sortedArray=`echo ${arr[@]} | tr " " "\n"|sort -g`
echo "sorting with sort command: "$sortedArray

for i in ${!arr[@]}
do
   for ((j=i;j<$arrSize;j++))
   do
      if [ ${arr[i]} -gt ${arr[j]} ]
      then
         temp=${arr[i]}
         arr[i]=${arr[j]}
         arr[j]=$temp
      fi
   done
done
echo "sorting without using sort command: "${arr[@]}

