
#! /bin/bash -x\
##to get frequency of each charecter in a word


echo "Please enter your favorite fruite"
read string
w=`echo $string | wc -c`
c=`expr $w - 1`
echo " no of chars in a string are $c"

