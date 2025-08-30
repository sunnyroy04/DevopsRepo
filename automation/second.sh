#!/bin/bash

read -r -p "Enter a number: " num

for i in {1..10}
do
  echo "$num x $i = $((num * i))"
done
