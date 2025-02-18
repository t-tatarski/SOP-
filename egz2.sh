#!/bin/bash
#so0168
# otworz plik z argumentu zawierajacy katalog z plikami w formacie sqq 
# przeanalizuj zawartosc. jezeli zawiera pliki txt wymien ich zawartosc 
# (litery i cyfry na kropki). uruchom wszystkie pliki z wyjatkiem exe. po drugiej
# nieudanej probie zakoncz
if [ "$#" -lt 1 ]; then
 echo "plik musi zawierac argumenty. uzycie: $0 <plik.sqq>"
 exit 1
fi
if [ "$1" != *.sqq ]; then
exit 2
fi

echo "katalogi w znalezionym pliku typu sqq"
echo "$1"

while IFS= read -r  katalog; do

echo $katalog

ls $katalog | grep ".txt" | sed 's/././g'
 for pli in $katalog; do
 if [[ -f "$pli" && "$pli" != *.exe ]]; then
 #nadawanie uprawnien i uruchamianie
 chmod +x "$pli"
 echo "uruchamianie pliku $pli"
 ./"$pli"
done < "$1"

