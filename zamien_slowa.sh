#!/bin/bash
#so0168
#zamienia slowa w podanym w argumencie pliku
separate(){
echo "##########################################################"
}
clear
if [ "$#" -lt 1 ]; then
 echo "nie podano argumentu do skryptu: uzycie $0 <plik.txt> <slowo> <zamiennik>"
 exit 1
fi
if [[ -f "$1" && "$1" == *.txt ]]; then 
separate
cat "$1"
separate
read -p "podaj słowo ktore mam zamienic: " slow
read -p "na jakie mam zamienic: " zam
sed "s/$slow/$zam/g" $1 
else
 echo "to nie jest własciwy plik"

fi

