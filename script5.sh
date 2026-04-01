#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Apeksha Saboo[24BAI10636]
# Course: Open Source Software

echo "Answer three questions to generate your manifesto."
echo ""

# Taking user input interactively
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# TODO: Compose a paragraph and write it to the output file using > and >>
echo "=== My Open Source Manifesto ===" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "I rely on $TOOL every single day to get my work done." >> "$OUTPUT"
echo "To me, the true essence of software freedom is $FREEDOM." >> "$OUTPUT"
echo "If I could contribute back to the community, I would build $BUILD and share it with the world." >> "$OUTPUT"
echo "================================" >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo "--- Here is what your manifesto says ---"
# Display the file contents
cat "$OUTPUT"
