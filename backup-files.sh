#!/bin/bash

#### VS CODE ####

# Define the source and destination directories
source_dir="$HOME/Library/Application Support/Code - Insiders/User"
destination_dir="/Users/gordonbeeming/dotfiles/files/vscode"

# Create the destination directory if it doesn't exist
mkdir -p "$destination_dir"

# Copy the VS Code settings files to the destination directory
cp "$source_dir/settings.json" "$destination_dir"
cp "$source_dir/keybindings.json" "$destination_dir"
cp -R "$source_dir/snippets" "$destination_dir"

echo "VS Code settings backup complete!"

#### BREW ####

brew list > ~/dotfiles/brew.txt

echo "Brew list backup complete!"
