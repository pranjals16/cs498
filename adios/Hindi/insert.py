f=open("coalscam_english.txt")
for line in f:
	line=line.strip()
	line="* "+line+" #"
	print line.strip()
