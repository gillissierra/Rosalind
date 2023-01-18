#!/bin/bash
# -*- coding: utf-8 -*-


#Mendel's First Law
k=20
m=24
n=21
numOrgs = (k, m, n)
popTotal= float(sum(numOrgs))

#Probability that two indivs will pass at least one dominant allele
#So prob the indiv produced is dom or het
#1- prob the indiv produced is homozygous recessive

#both homozygous rec parents
probHR= n/popTotal * (n-1)/(popTotal-1)

#both heterozygous parents
probHet = m/popTotal * (m-1)/(popTotal-1)

#one rec one het
probOneEach = (n/popTotal)*(m/(popTotal-1)) + (m/popTotal)*(n/(popTotal-1))

probDom = 1-(probHR + 0.25*probHet + 0.5*probOneEach)

print(probDom)
