#!/bin/bash

calculate_average() {
    local sum=0
    local count=${#numbers[@]}  

    for num in "${numbers[@]}"; do
        sum=$((sum + num))
    done

    if [ $count -gt 0 ]; then
        average=$(echo "scale=2; $sum / $count" | bc)
    else
        average=0
    fi

    echo "The average  is: $average"
}

echo "Enter numbers to calculate their average. "
echo " done when you are finished."

declare -a numbers

while true; do
    read -p "Enter a number (or 'done' to finish): " input

    if [ "$input" = "done" ]; then
        break
    fi

    if [[ "$input" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]; then
        numbers+=("$input")
    else
        echo "Invalid input. Please enter a valid number."
    fi
done

calculate_average
