#!/bin/bash
#so0168
#podaj liczby a nastepnie je posortuj rosnaco a potem malejaco


pliktymcz=$(mktemp)

echo "podaj 5 liczb w zaskresie od 1-99"
licznik=0
while [[ $licznik -le 5 ]]; do
echo "podaj $licznik liczbe:"
read liczba
 # todo walidacja czy jest liczba
echo $liczba >> "$pliktymcz"
((licznik++))

done

sort -n "$pliktymcz"
echo "malejaco"
sort -r "$pliktymcz"

rm "$pliktymcz"

 
