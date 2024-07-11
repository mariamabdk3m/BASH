#!/bin/bash

read() {
    local num_elements=$1
    local index=0
    
    echo "Enter $num_elements elements:"
    while [ $index -lt $num_elements ]; do
        read -p "Element $((index + 1)): " element
        array[$index]=$element
        index=$((index + 1))
    done
}

print_array() {
    echo "The elements in the array are:"
    echo "${array[@]}"
}

echo "How many elements do you want to enter in the array?"
read num_elements

if ! [[ "$num_elements" =~ ^[1-9][0-9]*$ ]]; then
    echo "Invalid input. Please enter a positive integer."
    exit 1
fi

declare -a array

read $num_elements

print_array
