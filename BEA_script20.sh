#!/bin/bash
num=$1
is_prime=1

for ((i=2; i<num; i++)); do
    if ((num % i == 0)); then
        is_prime=0
        break
    fi
done

if [ $is_prime eq 1 ]; then
   echo "$num es primo"
else
    echo "$num no

