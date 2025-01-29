#!/bin/bash

# This script processes a list of files and handles errors gracefully.

files=("file1.txt" "file2.txt" "file3.txt")

for i in "${files[@]}"; do
  if [ -f "$i" ]; then
    cat "$i"
  else
    echo "Error: File '$i' not found."
  fi
done

#Alternative solution using a more concise syntax:
#for i in "${files[@]}"; do
#  cat "$i" || echo "Error: File '$i' not found or inaccessible."
done