#!/bin/bash
cd Belfast
for X in `ls *.cha`
do
	./a.out<$X>>a.txt 
done
