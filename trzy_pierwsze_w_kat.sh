#!/bin/bash
#so0168

for plik in *; do
 if [[ -f "$plik" ]]; then
 totallns=$(wc -l < "$plik")
 head -n 3 "$plik"
 echo "liczba wierszy w pliku $totallns"
 echo "------------"
 fi
 
done
