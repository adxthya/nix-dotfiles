#!/usr/bin/env bash

# Directory containing images (change if needed)
INPUT_DIR="${1:-.}"
OUTPUT_DIR="${INPUT_DIR}/resized"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Resize each image to 1980x1080
for img in "$INPUT_DIR"/*.{jpg,jpeg,png,JPG,JPEG,PNG}; do
    # Skip if no matching files
    [ -e "$img" ] || continue
    
    filename=$(basename "$img")
    convert "$img" -resize 1980x1080^ -gravity center -extent 1980x1080 "$OUTPUT_DIR/$filename"
    echo "Resized: $filename"
done

echo "All images resized and saved to: $OUTPUT_DIR"

