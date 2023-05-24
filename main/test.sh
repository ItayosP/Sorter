#!/bin/bash
file=$(cat args.txt)
for line in $file
do
echo -e "$line\n" | tr -d ':"'
done





# String to modify
original_string="Hello, World!"

modified_string=$(echo "$original_string" | tr -d 'lo')

echo "$modified_string"
