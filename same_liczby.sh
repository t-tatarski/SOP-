#!/bin/bash
#so0168
# skrypt przyjmuje plik tekstowy i wyciaga z niego liczby
# i sortuje je potem zapisuje w pliku wskazanym w arg 2

if [ $# -lt 2 ]; then
echo "skrypt musi zawierac argumenty wedłu wzoru:"
echo "$0 plik1 plik2"
fi

plikwe=$1
plikwy=$2
echo "zawartość pliku $0 :"
cat "$plikwe"

grep -oE '[0-9S+]' "$plikwe" | sort > $plikwy 
