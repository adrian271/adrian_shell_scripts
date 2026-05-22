#!/bin/bash
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title MOV to MP4
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🎬
# @raycast.argument1 { "type": "text", "placeholder": "Path to .mov file" }
# @raycast.description Conver selected file from mov to mp4
# @raycast.author Adrian Barnes @adrian271 

INPUT="$1"
OUTPUT="${INPUT%.mov}.mp4"

ffmpeg -i "$INPUT" -vcodec libx264 -acodec aac "$OUTPUT" -y

echo "Saved to $OUTPUT"
