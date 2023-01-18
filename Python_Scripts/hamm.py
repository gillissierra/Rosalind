#!/bin/bash
# -*- coding: utf-8 -*-


#Hamming distance bn two DNA strand
s=list()
with open ("rosalind_hamm.txt") as f:
	for line in f:
		s.append(line.rstrip("\r\n"))

def hamm(str1, str2):
    dist = 0
    for i in range(len(str1)):
        if str1[i] not in str2[i]:
            dist = dist+1
    return dist

print(hamm(s[0], s[1]))

