#!/bin/bash
#so0168
# podane w argumencie pliki sprawdz czy są do odczytu i zapisu.
# policz liczbę znaków i liczbę spacji w pliku.

if [ $# -lt 1 ]; then
echo "nalezy podac argument wedlug wzoru $0 plik.txt"
sleep 4
fi

 if [ -r "$1" ]; then 
 echo "plik do zapisu"
 else
 echo "plik nie jest do zapisu"
 fi
 licz_spc=$(grep -o " " "$1" | wc -l)
 licz_zn=$(wc -c < "$1")
 echo "liczba spacji w pliku $1 to $licz_spc"
 echo "liczba wszystkich znakow to: $licz_zn"

