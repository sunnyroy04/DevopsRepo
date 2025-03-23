#!/bin/bash
read -r -p "Enter string " string
read -r -p "Enter letter " letter

echo "Number of times $letter is Present in $string"

grep -o $letter <<<"$letter" | wc -l
