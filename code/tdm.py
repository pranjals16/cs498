g=open("4_filtered.txt")
h=open("filtered_final_hindi.txt",'r')

worddict = {}
for line in g:					
	ele=line.split()
	ele[0] = ele[0].strip();
	worddict[ele[0]] = 0
#print "----------------Dicitonary Constructed-----------"

i=0
term=''
for s in worddict:
	term=term+s+','
term=term[:-1]
print term
for line in h:
	strin=""
	#print "Iteration"+str(i)
	x=line.split()
	for sen in worddict:
		worddict[sen]=0
	for word in x:
		if word.strip() in worddict:
			worddict[word]=1
	for m in worddict:
		strin=strin+str(worddict[m])+','
		i+=1
	strin=strin[:-1]
	i=0
	print strin
