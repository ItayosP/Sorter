#!/bin/bash

#search for specific file in specific directory

# Name of the file youre searching for
filename="main.sh"

# Directory where you want to start the search
search_dir="/d/VScodeFolders/file_sorter"

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
