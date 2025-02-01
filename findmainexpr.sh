#!/bin/bash
#so0168
#wypisuje nazwy tych plikow w biezacym kat ktore
tresc nie zaczynaja sie od main

for plik in *; do
if [ -f "$plik" ]; then
 if head -n 1 "$plik" | grep -q '^main'; then
  echo "$plik zawiera na początku słowo main"
 fi
fi

done
