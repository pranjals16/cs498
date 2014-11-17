'''f=open("coal scam_english.txt")
for line in f:
	line=line.strip()
	s=s.split()
	for x in s:
		print x.strip()'''
import nltk.data

tokenizer = nltk.data.load('tokenizers/punkt/english.pickle')
fp = open("coal scam_enlgish.txt")
data = fp.read()
print '\n-----\n'.join(tokenizer.tokenize(data))
