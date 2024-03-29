#!/bin/bash

# Takes in a DNA string of length s, max 1000 nt
# Returns the respective number of times that each base occurs in s
# Format: four intergers separated by spaces for A C G T

grep -o "[ACGT]" <<< $1 | sort | uniq -c | awk -v ORS=" " '{print $1}'
echo ""
