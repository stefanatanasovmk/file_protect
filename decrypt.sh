#!/bin/bash
if [ $# -eq 0 ]; then
    echo "No file specified."
    exit 1
fi

file=$1
decrypted_file="${file}.dec"

# Decrypt file
gpg --output "$decrypted_file" --no-symkey-cache --decrypt "${file}"

echo "Decrypted file: $decrypted_file content:"
# Display content
cat "$decrypted_file"

# Delete the decrypted file
shred -u "$decrypted_file"

