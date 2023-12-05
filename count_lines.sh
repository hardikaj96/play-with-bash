#!/bin/bash

filename=$1
echo "Counting lines in file: $filename"
count=0
if [ -e $filename ]; then
	while IFS= read -r line; do
		((count++))
		#echo "Line: $line"
	done < $filename
	echo "Total lines in file = $count"
else
	echo "File does not exist."
fi
