#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title kebab-case Conversion
# @raycast.mode silent
# @raycast.icon 🍢
# @raycast.packageName Text Transforms
# @raycast.description Convert selected text to lowercase kebab-case
# @raycast.author Adrian Barnes @adrian271

osascript -e 'tell application "System Events" to keystroke "c" using command down'
sleep 0.1

INPUT=$(pbpaste)

OUTPUT=$(echo "$INPUT" \
  | tr '[:upper:]' '[:lower:]' \
  | sed -E 's/[^a-z0-9]+/-/g' \
  | sed -E 's/^-+|-+$//g')

echo -n "$OUTPUT" | pbcopy
osascript -e 'tell application "System Events" to keystroke "v" using command down'
