batchStudents=("prajkta" "sandip" "prem" "sneha" "sachin")
todayAttendance=("prajkta" "prem" "sachin")
i=0
for std in ${batchStudents[@]}
do

                for stdPre in ${todayAttendance[@]}
                do
                        if [ $std == $stdPre ]
                        then
                                echo $stdPre" is present"
                                unset 'batchStudents[$i]'
                         fi

                done
        i=$(($i+1))
done

for s in ${batchStudents[@]}
do
        echo $s" is not present"
done

