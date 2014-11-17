#! /bin/sh
# 
#
# 
# Resume to training 
#
# -i index file
# -o the project name
# -r rewiring mode: single (1)
./adios.exe -a train -i $1.idx -o $1 -r 1 
