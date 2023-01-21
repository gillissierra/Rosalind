#!/bin/bash

# Rabbits reproduce following the Fibonacci sequence except the reproduction-age rabbits have a litter of size k
# Calcuates the number of rabbit pairs after n months, given we start with one pair and it takes two steps to reach reproduction-age

n=$1
k=$2
declare -A num_rabbits

for ((i=1; i<=$n; i++))
do
	if [[ $i == 1 ]] || [[ $i == 2 ]]
	then
		num_rabbits[$i]=1
	else
		num_rabbits[$i]=$(( ${num_rabbits[$(($i-1))]}+(${k}*${num_rabbits[$(($i-2))]}) ))
	fi
done

echo ${num_rabbits[$n]}
