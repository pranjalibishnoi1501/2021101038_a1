#!/bin/bash
# path to the file
filepath=$1
# storing file size in a variable.
size=$(wc --bytes < $filepath)
# displaying file size
echo "The size of file $1 is: $size Bytes"
echo -n "The number of lines in the file are: " 
sed -n '$=' $1
echo -n "The number of words in the file are: "
wc -w < $1
file=$1
i=1
while read -r line;
do
    echo -n "Line No: $i - Count of Words:"
    echo $line | wc -w
((i++))
done < "$file"
file=$1
declare -A cnt
text=$(grep "\S" $1)
text=$(echo $text | sed "s/'//g")
echo $text | while read -r line; do
    for word in $line; do
      count=$(grep -o -i "$word" $file | wc -l)
        ((cnt[$word]++))
        if [[ ${cnt[$word]} -eq 2 ]]
        then
        echo Word:$word - Count of repetition : $count
        fi
    done
done
