#!/bin/bash
read str
newstr=$(echo $str | tr "," " ")
declare -a arr
arr=($(echo $newstr ))
num=${#arr[@]}
for((i=0; i<num; i++))
do
    for((j=0; j<num-1; j++))
    do
        if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done
echo "Output :"
i=0
while [ $i -lt $num ]
do
    echo ${arr[$i]}
    i=`expr $i + 1`
done
