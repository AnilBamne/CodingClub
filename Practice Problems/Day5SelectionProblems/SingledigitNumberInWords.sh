##!/bin/bash -x

	echo -N " Enter The single digit Number ";
	read N
	
	if [ $N -eq 1 ]
	then
		echo " the number is ONE ";
	elif [ $N -eq 2 ]
	then
		echo " the number is TWO ";
	elif [ $N -eq 3 ]
	then
      echo " the number is THREE ";
	elif [ $N -eq 4 ]
   then 
		echo " the number is FOUR ";
	elif [ $N -eq 5 ]
	then
      echo " the number is FIVE ";
	elif [ $N -eq 6 ]
	then
      echo " the number is SIX ";
	elif [ $N -eq 7 ]
	then
      echo " the number is SEVEN ";
	elif [ $N -eq 8 ]
	then
      echo " the number is EIGHT ";
	elif [ $N -eq 9 ]
	then
      echo " the number is NINE ";
	else
		echo " the number is ZERO "
	fi

