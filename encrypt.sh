#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No file specified."
    exit 1
fi

file=$1

# Check if the file already has a .gpg extension
if [[ $file == *.gpg ]]; then
    echo "The file is already encrypted."
    exit 1
fi

gpg --output "${file}.gpg" --symmetric --cipher-algo AES256 --no-symkey-cache "$file" && rm "$file"
