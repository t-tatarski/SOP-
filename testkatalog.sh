#!/bin/bash
#so0168
#sprawdz czy podany argument skryptu to katalog a jesli tak wyswietl zawartosc

if [ "$#" -lt 1 ]; then
echo "za mało artumentów"
sleep 3
exit 1

elif [ -d "$1" ]; then
 for plik in "$1"/*; do

   if [ -f "$plik" ]; then
   echo "ZAWARTOSC PLIKU $plik"
   cat "$plik";
   else
   echo "KATALOG -->  $plik"
   fi
 done
else
echo "podany argument nie jest katalogiem"
fi


