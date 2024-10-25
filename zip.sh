#!/bin/bash

# Generate a random 3-4 digit number
RANDOM_NUM=$(( RANDOM % 9000 + 1000 ))

# Create the zip file with the random number in the name
ZIP_NAME="llayer_$RANDOM_NUM.zip"
zip -r9 "$ZIP_NAME" python

# Print the zip file name in bold
echo -e "\033[1mCreated zip file: $ZIP_NAME\033[0m"
