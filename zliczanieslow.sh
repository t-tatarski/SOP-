#!/bin/bash
#so0168
# zliczanie slow w pliku tekstowym
clear
echo "zliczanie slow w pliku tekstowym"
echo "--------------------------------"
if [ "$# -lt 1 ]; then
echo "użycie $0 <plik.txt>"
exit 1
fi
if [ -f "$1" ]; then
 tr -c '[:alnum:]' '[\n*]' < "$1" | sort | uniq -c | sort -nr
fi
echo "koniec"
