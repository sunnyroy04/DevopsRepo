#!/bin/bash

# Check if file exists
FILE="paragraph.txt"
if [ ! -f "$FILE" ]; then
    echo "File $FILE not found!"
    exit 1
fi

echo "Analyzing '$FILE'..."

# Count total words
word_count=$(wc -w < "$FILE")
echo "Total words: $word_count"

# Count total lines
line_count=$(wc -l < "$FILE")
echo "Total lines: $line_count"

# Count total characters
char_count=$(wc -m < "$FILE")
echo "Total characters: $char_count"

# Find the most common words (top 5)
echo "Top 5 most common words:"
tr -s '[:space:]' '\n' < "$FILE" | grep -oE '[a-zA-Z]+' | sort | uniq -c | sort -nr | head -5

# Find longest and shortest words
longest_word=$(grep -oE '\w+' "$FILE" | awk '{ print length, $0 }' | sort -nr | head -1 | cut -d ' ' -f2-)
shortest_word=$(grep -oE '\w+' "$FILE" | awk '{ print length, $0 }' | sort -n | head -1 | cut -d ' ' -f2-)

echo "Longest word: $longest_word"
echo "Shortest word: $shortest_word"
