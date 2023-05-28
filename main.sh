#!/bin/bash

file=$(cat args.txt)

search_dir=$(cat args.txt)

# Check if the entered directory exists
if [ -d "$search_dir" ]; then
    echo "Directory found at: $search_dir"
else
    echo "Directory not found."
    exit 1
fi

# Loop through each file in the directory
for file in "$search_dir"/*; do
    # Check if the item is a file
    if [ -f "$file" ]; then
        # Extract the file extension
        filename=$(basename "$file")
        ext="${filename##*.}"

        # Exclude the sorting program file
        if [ "$filename" != "version2.sh" ]; then
            # Create a directory for the extension if it doesn't exist
            if [ ! -d "$search_dir/$ext" ]; then
                mkdir "$search_dir/$ext"
            fi

            # Move the file to the corresponding directory
            mv "$file" "$search_dir/$ext/"
        fi
    fi
done

echo "Files sorted successfully!"
