#!/bin/bash
# -*- coding: utf-8 -*-


#Rabbits and Recurrence Relations

def numRabbits(n, k):
    if n==1:
        return 1
    elif n==2:
        return 1
    else:
        ans = numRabbits(n-2, k)*k+numRabbits(n-1, k)
        return ans
gen=30 # generation
litSize=2 # litter size
print(numRabbits(gen, litSize))
