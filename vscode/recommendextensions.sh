#!/bin/bash

# Path to the extensions.json file
EXTENSIONS_FILE=".vscode/extensions.json"

# Check if the extensions.json file exists
if [ ! -f "$EXTENSIONS_FILE" ]; then
    echo "extensions.json file not found!"
    exit 1
fi

# Extract the recommended extensions
EXTENSIONS=$(jq -r '.recommendations[]' "$EXTENSIONS_FILE")

# Install each recommended extension
for EXTENSION in $EXTENSIONS; do
    echo "Installing $EXTENSION..."
    code --install-extension "$EXTENSION"
done

echo "All recommended extensions have been installed."