#!/bin/bash

echo "enter the file name you want to sort"
read filename

echo "enter the full path of the file"
read search_dir

file_path=$(find "$search_dir" -name "$filename" -print -quit)

# Check if the file was found.
if [ -n "$file_path" ]; then
    echo "File found at: $file_path"
else
    echo "File not found."
fi

#4. make the code for checking the end of the file after the dot (.) 
if [[ $filename == *.* ]]; then
    echo "file"
    ext="${filename##*.}"
    echo "$ext"
else
    echo "dir"
fi

