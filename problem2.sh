#! /bin/bash -x

echo "Enter a string"
read str
char=$(echo -n "$str" | wc -c )
c=$(($char-1))
echo "no of chars : $c"

cc=`echo -n "$str" | grep -oi [aeiou]`
echo "$cc"
wc=$(echo "$cc"|wc -c)
echo "-----$wc"
