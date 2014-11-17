#!/usr/bin/python
# -*- coding: utf-8 -*-
import re
f=open('coal_scam_hindi.txt','r')
for line in f:
	line=line.replace("।",'\n')
	print line.lstrip()
