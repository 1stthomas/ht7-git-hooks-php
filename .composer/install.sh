#!/bin/bash

echo "im install..."
mkdir -p .git/hooks/ht7/src

SOURCE_DIR="vendor/ht7/src/"
TARGET_DIR=".git/hooks/ht7/"

# Create the target directory if it doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
  mkdir -p "$TARGET_DIR"
  echo "Created target directory: $TARGET_DIR"
fi

# Copy all files and folders from source to target
cp -r "$SOURCE_DIR"* "$TARGET_DIR"

# Confirm the operation
echo "All files and folders from $SOURCE_DIR have been copied to $TARGET_DIR."
