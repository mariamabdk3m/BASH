#!/bin/bash

mysq() {
    local num=$1
    local square=$((num * num))
    echo "The square of $num is: $square"
}

echo "type a num to calculate its square:"
read number

if [[ "$number" =~ ^[+-]?[0-9]+(\.[0-9]+)?$ ]]; then
    mysq $number
else
    echo "Invalid input. Please enter a valid number."
    exit 0
fi
