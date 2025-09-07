#!/bin/bash

# Install markdown-link-check if not present
if ! command -v markdown-link-check &> /dev/null; then
    npm install -g markdown-link-check
fi

# Find all .md files and check links in them
find . -name "*.md" -print0 | while IFS= read -r -d '' file; do
    echo "Checking links in $file"
    markdown-link-check "$file" -c ignore-links-config.json
done
