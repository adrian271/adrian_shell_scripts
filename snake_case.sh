#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title snake_case Conversion
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🐍
# @raycast.packageName Text Transforms

# Documentation:
# @raycast.description Convert selected text to lowercase snake_case
# @raycast.author Adrian Barnes @adrian271

# Grab selected text via clipboard
osascript -e 'tell application "System Events" to keystroke "c" using command down'
sleep 0.1

INPUT=$(pbpaste)

# Transform: lowercase, replace non-alphanumeric runs with underscores, trim edges
OUTPUT=$(echo "$INPUT" \
  | tr '[:upper:]' '[:lower:]' \
  | sed -E 's/[^a-z0-9]+/_/g' \
  | sed -E 's/^_+|_+$//g')

# Put result on clipboard and paste it back
echo -n "$OUTPUT" | pbcopy
osascript -e 'tell application "System Events" to keystroke "v" using command down'
