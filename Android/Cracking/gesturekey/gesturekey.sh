#!/bin/bash
if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
    echo "Usage: ./gesturekey_cracker.sh filename"
fi
hash=$(od -t x1 -An $1 | tr -d '\n' | tr -d ' ')
pattern_value=$(grep -i $hash androidpatternsha1.txt | sed 's/;.*//')
echo "Hex Value: $hash"
echo "pattern: $pattern_value"
