#!/bin/bash

is_integer() {
    local input=$1

    # Check if the input is empty
    if [ -z "$input" ]; then
        echo "Error: Input is empty."
        return 1  # indicating failure
    fi

    # Use a regular expression to check if the input consists only of digits
    if [[ ! "$input" =~ ^[0-9]+$ ]]; then
        echo "Error: Input is not an integer."
        return 1  # indicating failure
    fi

    return 0  # indicating success
}


