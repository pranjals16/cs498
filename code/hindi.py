# -*- coding: cp1252 -*-
import os
import re
import csv
from numpy import genfromtxt
from plsa import pLSA

count=0
x=pLSA()

my_data=genfromtxt('train.csv', delimiter=',')
[i,j]=my_data.shape

a=(my_data[1:]).transpose()
x.train(a,666666)

data=csv.reader(open('train.csv'))
fields=data.next()
cluster=x.topic_labels(fields)
for rows in cluster:
    l=''
    for x in rows:
	l=l+x+','
    print '['+l+']'
