#!/usr/bin/python3

# Updated Janaury 2023 

# Given k Homozygous Dominant, m Heterozygous, and n Homozygous Recessive indivs that can all mate
# Calculate the probability the offspring has a dominant phenotype

# Aka 1 - prob of homozygous recessive

import sys

k = float(sys.argv[1]) 
m = float(sys.argv[2])
n = float(sys.argv[3])

total = (k + m + n)

# Both homozygous rec parents
prob_rec_parents = n/total * (n-1)/(total-1)

# Both heterozygous parents
prob_het_parents = m/total * (m-1)/(total-1)

# One recessive and one het parent
prob_one_each = (n/total)*(m/(total-1)) + (m/total)*(n/(total-1))

prob_dom_offspring = 1-(prob_rec_parents + 0.25*prob_het_parents + 0.5*prob_one_each)

print(prob_dom_offspring)
