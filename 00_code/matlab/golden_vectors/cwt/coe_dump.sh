#!/bin/sh

# passes from txt to coe file

# inputs:
#	$1 coefficients source
#	$2 radix
#	$3 new file name

if [ $# -lt 2 ]
then
	echo "Not sufficient arguments supplied"
	echo "Usage: ./[bash_file] [txt_filename] [base] (10/16/8/2) [target_filename] (optional)"

	exit 1

elif [ ! -f $1 ]
then
	echo "$1: No such file or directory"
	echo "Usage: ./[bash_file] [txt_filename] [base] (10/16/8/2) [target_filename] (optional)"

	exit 1

elif [ $2 -ne 10 ] && [ $2 -ne 16 ] && [ $2 -ne 8 ] && [ $2 -ne 2 ] 
then
	echo "$2: Incorrect base"
   	echo "Base should be (10/16/8/2)"
   
	exit 1
fi

if [ $# -eq 2 ]
then
   output_filename="${1%.txt}.COE";
else
   output_filename="${3%.txt}.COE";
fi

# output_filename="${2%.txt}.COE";
rm -rf $output_filename
touch $output_filename

echo "memory_initialization_radix = $2;" >> $output_filename
echo "memory_initialization_vector = " >> $output_filename
sed '$!s/$/,/' $1 >> $output_filename
echo ";" >> $output_filename
