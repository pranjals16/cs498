#! /bin/sh
#
#
#
# Create the ADIOS graph
# -f the input corpus
# -o the project name (output: proj_name.idx proj_name.grp)
#
./create_graph.exe -f $1.corpus.txt -o $1
#
#
# Train ADIOS
# -i the index file
# -g the graph file
# -c stop criterion
# -W context window size
# -S p-value
# -E Eta
#
./adios.exe -a train -i $1.idx -g $1.grp -c 400 -W 5 -S 0.01 -E 0.9 -o $1 
