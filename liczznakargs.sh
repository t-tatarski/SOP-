#!/bin/bash -x
#so0168
#licz znaki w argumentach skryptu
#skrypt dla kontroli wypisze co aktualnie robi

if [ $# -lt 1 ]; then
echo "argument powinien wystapic w uruchamianym skrypcie"
fi
LICZBA_ZN=0;
for znak in $@; do

SUMA=$(echo -n $znak | wc -c)
let LICZBA_ZN+=SUMA

echo "liczba znakow tekstu  podanego w argumencie wynosi: $SUMA"
done
