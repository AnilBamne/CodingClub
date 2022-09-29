for x in `ls *.java`

do

       javaFileName=`echo $x | awk -F. '{ print $1 }'`

       if [ -d $javaFileName ]

       then

           echo "**************Folder Exist Scenario****************"

           rm -rf $javaFileName

       fi

       mkdir $javaFileName

       cp -r $x $javaFileName

done
