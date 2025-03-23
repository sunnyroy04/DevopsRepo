#!/bin/bash
read -p "Enter a String For Pattern Matching: " string
read -p "Enter the Letter you want to check: " letter

a=0
for ((i = 0; i < ${#string}; i++)); do
    if [[ "${string:$i:1}" == "$letter" ]]; then
        ((a++))
    fi
done
echo "The letter '$letter' appears $a times in '$string'."
