#!/bin/bash

#4. make the code for checking the end of the file after the dot (.) 

echo "enter the file name you want to sort"
read filename

if [[ $filename == *.* ]]; then
    echo "file"
    ext="${filename##*.}"
    echo "$ext"
else
    echo "dir"
fi
