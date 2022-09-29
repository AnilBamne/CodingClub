#!/bin/bash -x

	num1=$((RANDOM%6));
	num2=$((RANDOM%6));

	echo "The Addition of Two Dice numbers is "
	Addition=$(($num1+$num2));

	echo $Addition;
