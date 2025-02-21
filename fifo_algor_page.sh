#!/bin/bash
#so0168
TABLICA
echo "podaj liczbe stron"; read ilosc
echo "podaj liczbe ramek" ; read ramki
i=1
while [ $i -le $ilosc ]; do 
echo "podaj po kolei strony bez przecinkow"
read tmp
TABLICA+=($tmp)
((i++))
done
echo $TABLICA
