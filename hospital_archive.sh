#!/bin/bash

ACTIVE_DIR="active_logs"
ARCHIVE_DIR="archived_logs"

mkdir -p "$ARCHIVE_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M")

for file in "$ACTIVE_DIR"/*.log; do
    
    [ -e "$file" ] || continue
    
    filename=$(basename "$file")

    name="${filename%.*}"
    ext="${filename##*.}"
   
    new_filename="${name}_${TIMESTAMP}.${ext}"
    
    mv "$file" "$ARCHIVE_DIR/$new_filename"
    
    touch "$file"

done
echo "The archive is successfully done"

