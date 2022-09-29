o##!/bin/bash -x

   echo " Enter The single digit Number From 1 to 7 ";
   read N

   if [ $N -eq 1 ]
   then
      echo " This is a Sunday ";
   elif [ $N -eq 2 ]
   then
      echo " This is a Monday ";
   elif [ $N -eq 3 ]
   then
      echo " This is a Tuesday ";
   elif [ $N -eq 4 ]
   then
      echo " This is a Wednesday ";
   elif [ $N -eq 5 ]
   then
      echo "  This is a Thursday ";
   elif [ $N -eq 6 ]
   then
      echo " This is a Friday ";
   else
   
      echo " This is a Saturday ";

	fi

   
