#!/bin/bash
#so0168
#skrypt wyszukuje duplikaty ponownie pobranych plikow typu plik(1).mp3 itd

clear
if [ "$#" -lt 1 ]; then 
echo "nie podano katalogu do sprawdzenia. uzycie: $0 <katalog>"
exit 1
fi
if [ ! -d "$1" ]; then
echo "to nie jest katalog"
exit 2
fi 
duplic=$(find "$1" -type f -regextype posix-extended -regex '.* \([0-9]+\)\..*')
if [ -z "$duplic" ]; then
 echo "nie znaleziono duplikatow w katalogu $1"
else
echo "znaleziono duplikaty $duplic"
fi
