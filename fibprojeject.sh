#!/bin/bash
is_fibonacci() {
    num=$1
    a=0
    b=1
    while [ $b -lt $num ]; do
        temp=$b
        b=$((a + b))
        a=$temp
    done
    [ $b -eq $num ]
}

fibonacci_index() {
    num=$1
    a=0
    b=1
    index=1
    while [ $b -lt $num ]; do
        temp=$b
        b=$((a + b))
        a=$temp
        index=$((index + 1))
    done
    if [ $b -eq $num ]; then
        echo $index
    else
        echo "-1"
    fi
}

read -p "enter num" num


if is_fibonacci $num; then
	index=$(fibonacci_index $num)
	echo "the number $num is part of fibonacci he is index number $index"
else
     echo "the numer $num is not fibonacci"
fi




