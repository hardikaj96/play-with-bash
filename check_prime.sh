#!/bin/bash

source check_integer.sh

input_number=$1

is_prime() {
	local number=$1

	if [ $number -lt 2 ]; then
		echo "$number is not a prime number."
		return 1
	fi

	for ((i=2; i*i<=$number; i++)); do
		if [ $((number % i)) -eq 0 ]; then
			echo "$number is not a prime number."
			return 1
		fi
	done

	echo "$number is a prime number."
	return 0
}

if is_integer "$input_number"; then
	is_prime $input_number
fi
