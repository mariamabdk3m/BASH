#!/bin/bash

HOME_DIR="$HOME"

for item in "$HOME_DIR"/*; do
    if [ -e "$item" ]; then
        chmod +x "$item"
        echo "Added execute permission to: $item"
    fi
done

echo "ALL in $HOME_DIR Are  given The execute permissions."
