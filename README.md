# Description
Using the Rosalind problems to keep with my current skills and learn new ones, for bash. Some problems are done in earlier years in Python. Some problems make more sense to do in programs other than bash, and will be described below

## IPRB Mendel's First Law
Since this requires a math equation evoking multiple instances of BEDMAS, it was easier to do in python than bash.


## SUBS Finding a Motif in DNA
This seems like a simple `grep` but it is not. We need to be able to find the location of *overlapping* motifs. The following code works
```
echo "GATATATGCATATACTT" | grep -Pbo "AT(?=AT)" | awk -F":" 'BEGIN {ORS=" "} {print $1+1} END {print "\n"}'
```

However this is only because the repetitive pattern can be easily split in half. It would be hard to make this method generalize given any pattern.

There is a `regex` package in python has a method `re.findall(<pattern>, <query_string>, overlapped=True)`. The bash code works when there is an obvious repetition in the pattern to use in the lookahead part of the regex..
