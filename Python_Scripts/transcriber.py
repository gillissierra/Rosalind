RNA = DNA = ""
with open ("rosalind_rna.txt") as f:
	for line in f:
		DNA = DNA + line.rstrip("\r\n")

for i in DNA:
	if i in "T":
		RNA = RNA + "U"
	else:
		RNA = RNA + i

print(RNA)
