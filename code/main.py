# -*- coding: cp1252 -*-
import textmining
import os
import re
import csv
from numpy import genfromtxt
from plsa import pLSA

tdm = textmining.TermDocumentMatrix()
swords=[line.strip() for line in open("stopwords.txt", "r")]
trainlines=[line.strip() for line in open("coalscam_english.txt", "r")]
count=0

l=len(trainlines)
for i in range(0,l):
    for s in swords:
        trainlines[i]=re.sub(r'\b'+s+r'\b','',trainlines[i])

for i in range(0,l):
    doc=trainlines[i]
    tdm.add_doc(doc)

tdm.write_csv("matrix.csv", cutoff=1)

x=pLSA()

my_data=genfromtxt('matrix.csv', delimiter=',')
[i,j]=my_data.shape

a=(my_data[1:]).transpose()
x.train(a,3)

data=csv.reader(open('matrix.csv'))
fields=data.next()
cluster=x.topic_labels(fields)
for rows in cluster:
    print rows


p=count
while ( p>0):
    print x.document_topics()[:,(i-p-1)]
    p=p-1


