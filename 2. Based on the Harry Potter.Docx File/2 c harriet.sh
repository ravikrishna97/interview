#!/bin/bash
input_file="harry"
output_file="harriet.txt"
if [ ! -f "$input_file" ]; then
  echo "file not found"
  exit 1
fi
sed 's/harry/harriet/g' "$input_file" > "$output_file"
echo "replace done and saved in $output_file."
