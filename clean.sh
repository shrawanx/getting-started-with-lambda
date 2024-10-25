#!/bin/bash

# Remove the 'python' directory if it exists
if [ -d "python" ]; then
    echo "Removing 'python' directory..."
    rm -rf python
    echo "'python' directory removed."
else
    echo "'python' directory does not exist."
fi

# Find and remove all .zip files in the current directory
echo "Scanning for .zip files..."
ZIP_FILES=$(find . -maxdepth 1 -name "*.zip")

if [ -n "$ZIP_FILES" ]; then
    echo "Deleting the following .zip files:"
    echo "$ZIP_FILES"
    rm -f *.zip
    echo ".zip files deleted."
else
    echo "No .zip files found."
fi
