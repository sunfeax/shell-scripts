#!/bin/bash
# Script to execute VS Code with Maven

VSCODE_PATH="~/VSCode-linux-x64"

echo "Running VSCode"
cd "$VSCODE_PATH" || { echo "Error: Can't find VSCode path"; exit 1; }
./code --no-sandbox &

if [ $? -eq 0 ]; then
    echo "VS Code has been executed!"
else
    echo "Error."
fi
