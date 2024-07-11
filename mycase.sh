#!/bin/bash

echo -n "Enter a string: "
read input

if [[ -z "$input" ]]; then
    echo "Nothing."
elif [[ "$input" =~ ^[A-Z]+$ ]]; then
    echo "Upper Cases."
elif [[ "$input" =~ ^[a-z]+$ ]]; then
    echo "Lower Cases."
elif [[ "$input" =~ ^[0-9]+$ ]]; then
    echo "Numbers."
elif [[ "$input" =~ ^[A-Za-z0-9]+$ ]]; then
    echo "Mix."
else
    echo "Not Supported."
fi
