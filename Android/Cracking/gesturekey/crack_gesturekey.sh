#!/bin/bash
bold=$(tput bold)
if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
    echo "Usage: ./crack_gesturekey.sh filename "
    exit
fi
#finds hex value and trims it down
hash=$(od -t x1 -An $1 | tr -d '\n' | tr -d ' ')
#Look for the value in the dictionary and matches the found value to its pattern 
pattern_value=$(grep -i $hash androidpatternsha1.txt | sed 's/;.*//')
echo -e "\033[0;32m ${bold}CRACK SUCCESFUL \e[0m"
echo -e "\033[0;33m Hex Value:  \e[0m  $hash"
echo -e "\033[0;33m Pattern:\e[0m   \033[0;32m ${bold} $pattern_value\e[0m "  