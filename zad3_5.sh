#!/bin/bash
#so0168
#zad5

if [ ! -f "$1" ] ; then
 echo "nie ma takiego pliku"
 exit 1
else
 liczby=$(sort -n "$1")
 echo "$liczby"
 unikalne=$(echo "$liczby" | uniq -u | wc -l)
 echo "unikalnych liczb: $unikalne"
 wszystkie=$(echo "$liczby" | wc -l)
 echo "wszystkich jest: $wszystkie"
 powt=$(echo "$liczby" | uniq -d | wc -l)
 echo "powtarzające się: $powt"
fi
