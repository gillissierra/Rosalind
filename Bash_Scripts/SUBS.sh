#!/bin/bash

# Find the LOCATION of all OVERLAPPING motifs of a given pattern
# NOTE: the pattern must be only the first part of the repeated sequence
pattern=$2

echo $1 | grep -Pbo "${pattern}(?=${pattern}" | awk -F":" 'BEGIN {ORS=" "} {print $1+1} END {print "\n"}'
