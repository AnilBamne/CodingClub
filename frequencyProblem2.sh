read -p "Please enter the word \n" word
my_array=( `echo $word | grep -o . ` )
declare -A dictionary
for x in ${my_array[@]}
do
	l=0

	for i in ${my_array[@]}
	do
		if [  $x == $i ]
		then
			l=$(($l+1))
			array=("$x=$l")
		fi

	done
echo ${array[@]}
done
