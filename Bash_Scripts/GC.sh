#!/bin/bash

# Given a fasta of up to 10 DNA sequences of up to 1 kbp each, for the sequence with the highest GC content, report the name and fraction of GC

# get sequences on one line so odd lines are names, even lines are sequences
# names in one column, sequences in next
# calculate GC for each name
# print line with max GC

awk '{if(NR==1) {print $0} else {if($0 ~ /^>/) {print "\n"$0} else {printf $0}}}' $1 |
	awk 'NR%2 !=0 {split($0,col1)}; NR%2 == 0 {split($0,col2); for (i=1;i<=length(col1);i++) print col1[i],col2[i]};' |
	awk -F'[> ]' '{gc=gsub(/[gGcC]/,"", $3); at=gsub(/[aAtT]/,"", $3); printf "%s %.6f\n", $2, (gc)*100/(gc+at) }' | 
	awk 'max<$2 || NR==1 {max=$2; data=$0} END {print data}'
