RNA = DNA = ""
with open ("rosalind_revc.txt") as f:
	for line in f:
		DNA = DNA + line.rstrip("\r\n")

for i in DNA[::-1]:
	if i in "T":
		RNA = RNA + "A"
	elif i in "C":
		RNA = RNA + "G"
	elif i in "A":
		RNA = RNA + "T"
	else:
		RNA = RNA + "C"

print(RNA)
