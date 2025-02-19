#!/bin/bash
#so0168
# skrypt wyswietla w katalogu biezacym liczbe plikow, katalogow
# jesli wystepuja pliki txt przeanalizuje liczbe wierszy

echo "liczba plikow w biezacym katalogu to :"
ls -l | grep "^-" | wc -l
echo "----------------"
echo "liczba katalogow wynosi :"
ls -l | grep "^d" | wc -l

echo "ilosc wierszy w plikach"
for plik in * ; do

if [[ "$plik" == *.txt ]]; then
echo -n "Plik $plik 		 :"
wc -l < "$plik" 
fi

done


