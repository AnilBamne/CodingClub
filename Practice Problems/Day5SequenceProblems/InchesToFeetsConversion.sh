#!/bin/bash -x

	echo "convert 42 Inches In feets"
	inch=42;
	
	Feet=$(echo | awk 'BEGIN {print 42/12}');
	
	echo $Feet;


