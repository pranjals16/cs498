#! /bin/sh
#
#
#
# Test ADIOS
#
# -i the index file 
# -I the test file 
# -o project name, output files proj_name.test.results.txt 
# proj_name.test.classify.txt proj_name.test.summary.txt
./adios.exe -a test -i $1.idx -I $2 -o $1
