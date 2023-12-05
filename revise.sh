#!/bin/bash

echo "1. Initialize and Log"

name="Hari"
echo "Jay Swaminarayan, $name!"

echo ""
echo "2. Read Input and Log"

echo "Current Country?"
read country
echo "Welcome to $country!!!!!"

echo ""
echo "3. If-Elif-Else condition"

read -p "What is your age: " age

if [ $age -lt 13 ]; then
	echo "You are still a kid"
elif [ $age -lt 20 ]; then
	echo "You are still a teenage"
else
	echo "You are now adult"
fi

echo ""
echo "4. For Loop"

echo "--------------"

for i in {1..5}; do
	echo "country - $i"
done

echo ""
echo "5. While Loop"

counter=0
while [ $counter -lt 5 ]; do
	echo "Current Age $age + $counter"
	((counter++))
done

echo ""
echo "6. Functions"

wish() {
	echo "Have a good day, $1"
}

wish "Krish"

echo ""
echo "7. File Operations"

filename="example.txt"

if [ -e $filename ]; then
	echo "$filename exists."
else
	echo "$filename does not exists. Creating it..."
	touch $filename
fi

echo "Adding content to $filename..."
echo "Good Morning, Love" >> $filename

echo "Reading content from $filename"
cat $filename


echo ""
echo "8. Arrays"

languages=("Python" "java" "C++" "go")

echo "First - ${languages[0]}"
echo "All - ${languages[@]}"

echo "All - using loop"
for language in "${languages[@]}"; do
	echo $language
done

echo ""
echo "9. Date Operation"

current_date=$(date +"%Y-%m-%d")

echo "Today's date is $current_date"


echo ""
echo "10. Function with return values"

add_numbers () {
	local result=$(( $1 + $2 ))
	echo $result
}

sum=$(add_numbers 5 3)
echo "Sum of 5 and 3: $sum"

echo ""
echo "11. Case Statements"

read -p "Enter a language: " lang

case $lang in 
	"python")
		echo "It's high level, general purpose programming language"
		;;
	"java")
		echo "It's high level, class-based, object-oriented programming language"
		;;
	*)
		echo "Unknown language"
		;;
esac


echo ""
echo "12. Read from a file"

file="example.txt"
if [ -e $file ]; then
	while IFS= read -r line; do
		echo "Line: $line"
	done < $file
else
	echo "File not found: $file"
fi

