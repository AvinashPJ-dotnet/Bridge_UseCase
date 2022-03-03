#!/bin/bash -x
read -p "enter value a: " a
read -p "enter value b: " b
read -p "enter value c: " c
uc2=$(($((b*c))+a))
uc3=$(($((a*b))+c))
uc4=$(($((a/b))+c))
uc5=$(($((a%b))+c))

declare -A computeDict
computeDict[uc2]=$uc2
computeDict[uc3]=$uc3
computeDict[uc4]=$uc4
computeDict[uc5]=$uc5
counter=0
for key in  ${!computeDict[@]}
do
	echo "$key: " "${computeDict[$key]}"
	computeArray[((counter++))]=${computeDict[$key]}
#echo ${#computeDict[@]}
done
echo "compute array"${computeArray[@]}
echo "_______________________________"
ascendingOrder=`echo ${computeArray[@]} | tr " " "\n" | sort -g`
decendingOrder=`echo ${computeArray[@]} | tr " " "\n" | sort -gr`
echo "Ascending: $ascendingOrder"
echo "Decending: $decendingOrder"

