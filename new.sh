#! /bin/bash -x

name=(b a n a n a)

for char in {a..z}
do
  	if [ $char -eq ${name[0]}]
	then
		echo "$char is present"
	else
		echo "---------------"
	fi
   
done
