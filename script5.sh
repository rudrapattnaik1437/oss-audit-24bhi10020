#!/bin/bash
# Script 5: Manifesto Generator

echo "Answer 3 questions"

read -p "Tool you use: " TOOL
read -p "Freedom means: " FREEDOM
read -p "What you'd build: " BUILD

DATE=$(date)
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe open source means $FREEDOM. I use $TOOL daily and would build $BUILD and share it freely." > "$OUTPUT"

echo "Saved to $OUTPUT"
cat "$OUTPUT"