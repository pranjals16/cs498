#! /bin/sh
# 
#
# 
# Print the ADIOS patterns
#
# -i the index file
# -o the project name, output file proj_name.results.txt
./adios.exe -a print -i $1.idx -o $1
