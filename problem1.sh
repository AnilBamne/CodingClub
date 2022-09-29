#! /bin/bash -x




batchStudents=( "Ankit" "Amit" "Shilpa" "Vidya" "Anand" )

todayAttendanceList=( "Amit" "Shilpa" "Anand" )

for Student in ${batchStudents[@]}
do
   if [ $Student == ${todayAttendanceList[0]} ]
   then
        echo " $Student is present "
   elif [ $Student == ${todayAttendanceList[1]} ]
   then
        echo " $Student is present "
   elif [ $Student == ${todayAttendanceList[2]} ]
   then
        echo " $Student is present "


   else
        echo " $Student is Absent "
   fi
done
