s=""
with open ("rosalind_dna.txt") as f:
	for line in f:
		s = s + line.rstrip("\r\n")

nA = nG = nT = nC = 0

for i in s:
	if i in "A":
		nA = nA + 1
	elif i in "C":
		nC = nC + 1
	elif i in "G":
		nG = nG + 1
	else: 
		nT = nT + 1

print(nA, nC, nG, nT)
