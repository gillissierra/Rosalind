#!/bin/bash

# Given a DNA string s, output the reverse compliment
# Step 1: A -> T, T -> A, C->G, G->C
# Step 2: reverse the string

tr 'ACGT' 'TGCA' <<< $1 | rev
