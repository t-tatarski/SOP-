#!/bin/bash
#
#

if [ -d "$1" ]; then
echo "zawartość katalogu $1"
echo "---------------------"

for file in "$1"/*; do 
 if [ -f "$file" ]; then
 echo "plik $file :"
 cat "$file"
 echo "--------------------"
 fi
done
fi
