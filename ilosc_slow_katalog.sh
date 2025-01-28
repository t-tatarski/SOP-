#!/bin/bash
#so0168
# wyswietla ilosc slow w nazwach plikow w biezacym katalogu domowym. w nazwach nie ma zadnej 
# duzej litery ani cyfry
countr=0
echo "$HOME"
echo "to katalog domowy"
for plik in "$HOME"/*; do
((countr++))
 if [ -f "$plik" ] && [[  "$plik" =~ [a-z] ]] && [[ ! "$plik" =~ [0-9] ]]; then
echo "$countr )"
echo "$plik"
echo "ilosc slow:"
cat "$plik" | wc -w
echo "-------------------------------"
 fi
done
