#!/bin/bash

home_dir="$HOME"
backup_dir="$home_dir/backup"

if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
    echo "Created : $backup_dir"
fi

for item in "$home_dir"/*; do
    if [ -f "$item" ]; then
        cp "$item" "$backup_dir"
        echo "Backedup file: $item"
    fi
done

echo "backed up is completed in $home_dir ."
