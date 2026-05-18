#!/bin/zsh

# @raycast.schemaVersion 1
# @raycast.title currentDate (YYYY-MM-DD)
# @raycast.mode silent
# @raycast.icon 📅
# @raycast.packageName Text Transforms
# @raycast.description Convert selected text to lowercase kebab-case
# @raycase.author Adrian Barnes @adrian271

date +"%Y-%m-%d" | tr -d '\n' | pbcopy
