#!/bin/bash

is_fibonacci() {
    num=$1
    a=0
    b=1
    pos=1

    while [ $b -le $num ]; do
        if [ $b -eq $num ]; then
            echo "$num is part of the Fibonacci sequence at position $pos."
            return 0
        fi
        next=$((a + b))
        a=$b
        b=$next
        ((pos++))
    done
    echo "$num is not part of the Fibonacci sequence."
    return 1
}

number=$1
is_fibonacci "$number"
