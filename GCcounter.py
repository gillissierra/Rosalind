#!/bin/bash

#Counting GC content from Fasta files

#save each seq in a dictionary
fasta = {}
with open("rosalind_gc.txt") as f:
    for line in f:
        line = line.strip()
        if line.startswith(">"):
            seq_name = line.lstrip(">")
        else:
            fasta.setdefault(seq_name, []).append(line)

#count GC content
count = 0.0
GC = 0.0
contents = {}
newSeq = ""
for seqID in fasta:
    for seq in fasta[seqID]:
        newSeq = newSeq + seq
    fasta[seqID] = newSeq
    for base in newSeq:
        if base in "G":
            count = count + 1
        elif base in "C":
            count = count + 1
    GC = count/len(newSeq)*100
    contents.setdefault(seqID, []).append(GC)
    count = 0.0
    GC = 0 
    newSeq = ""

#print largest
print(max(contents, key=contents.get))

print(contents[max(contents, key=contents.get)][0])

