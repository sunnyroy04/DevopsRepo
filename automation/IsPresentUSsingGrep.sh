#!/bin/bash
read -p "Enter string " string
read -p "Enter letter " letter

echo "Number of times $letter is Present in $string"

grep -o $letter <<<"$letter" | wc -l
