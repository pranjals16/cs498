#! /bin/sh
#
#
#
# Run the teacher-learner procedure


# Import the TA1 grammar, to be used by the teacher
./convert_grammar.exe -g $1.cfg -l $1.lex -o $1

# Store the grammar
rm -f $1.teacher.zip
zip $1.teacher.zip patterns.dat graph.dat $1.idx

# Create the training corpus
./generate.sh $1
rm -f $1.corpus.txt
# Remove sentences that were not fully spanned  
sed /\~/d $1.generate.txt | head -n 800 > $1.corpus.txt

# Create the target corpus to test the recall (coverage) 
./generate.sh $1
rm -f $1.ctarget.txt
sed /\~/d $1.generate.txt | head -n 500 > $1.ctarget.txt

# Start the learning
./train.sh $1

# Store the acquired grammar
rm -f $1.learner.zip
zip $1.learner.zip patterns.dat graph.dat $1.idx

# Create the learner corpus to test the precision
./generate.sh $1
rm -f $1.clearner.txt
sed /\~/d $1.generate.txt | head -n 500 > $1.clearner.txt

# Test Recall
./test.sh $1 $1.ctarget.txt
r=`grep 'out of' $1.test.summary.txt`
unzip -o $1.teacher.zip

# Test Precision
./test.sh $1 $1.clearner.txt
p=`grep 'out of' $1.test.summary.txt`


# Write results
echo _____________________________________________________
echo
echo
echo ADIOS results: $1
echo "Recall (coverage) = " $r
echo "Precision = " $p 
echo _____________________________________________________



