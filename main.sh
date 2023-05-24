#!/bin/bash

# Name of the file youre searching for
read filename

# Directory where you want to start the search
read search_dir

# Search for the file and retrieve its path
file_path=$(find "$search_dir" -name "$filename" -print -quit)

# Check if the file was found
if [ -n "$file_path" ]; then
    echo "File found at: $file_path"
else
    echo "File not found."
fi

#cheking if its a file or directory
if [[ $filename == *.* ]]; then
    echo "file"
else
    echo "dir"
fi