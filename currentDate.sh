#!/bin/zsh

# @raycast.schemaVersion 1
# @raycast.title currentDate (YYYY-MM-DD)
# @raycast.mode silent
# @raycast.icon 📅
# @raycast.packageName Text Transforms
# @raycast.description Add Current Date to clipboard (YYYY-MM-DD)
# @raycast.author Adrian Barnes @adrian271

date +"%Y-%m-%d" | tr -d '\n' | pbcopy
