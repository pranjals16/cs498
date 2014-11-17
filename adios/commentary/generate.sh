#! /bin/sh
# 
#
# 
# generate sentences 
# -i the index file name 
# -n number of sentences to be generated
# -R max recursion depth 
# (~ appears when the generator exceeds the max depth)
# -o project name, the output file is proj_name.generate.txt 
./adios.exe -a generate -i $1.idx -n 2000 -R 10 -o $1
