read str
len=${#str}
for((i=$len-1;i>=0;i--))
do
    echo -n  ${str:$i:1}
done
echo -e
for((i=$len-1;i>=0;i--))
do
     reverse="$reverse${str:$i:1}"
done
final=$reverse
letter2='z'
for letter in {y..a}
do
final=${final//[$letter]/$letter2}
letter2=$(tr 1-9a-zA-Z 0-9a-zA-Y <<<"$letter2")
done
letter2='Z'
for letter in {Y..A}
do
final=${final//[$letter]/$letter2}
letter2=$(tr 1-9a-zA-Z 0-9a-zA-Y <<<"$letter2")
done
echo $final
for((i=$len/2-1;i>=0;i--))
do
    reverse2="$reverse2${str:$i:1}"
done
for((i=$len/2;i<len;i++))
do
    reverse2="$reverse2${str:$i:1}"
done
echo $reverse2
