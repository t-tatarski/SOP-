#!/bin/bash
#so0168

# Skrypt zapisze do pliku P 
# te spośród swoich argumentów, które są katalogami
# zawierającymi co najmniej 11 dowolnych pozycji
# (dowolnych plików lub katalogów, również ukrytych).
# Nazwa pliku P musi być podana z klawiatury.
# W pliku P powinniśmy zapisać nazwę katalogu i ilość pozycji

if [[ "$#" -lt 1  &&   -d "$1" ]]; then
 echo "skrypt $0 musi zawierac argumenty z katalogami"
 exit 1
fi
echo -n "podaj nazwe zapisywanego pliku"
read P

if [ -z "$P" ]; then
echo "nie podano nazwy pliku"
exit 1
fi

touch $P
if [ -z "$P" ]; then
echo "utworzyles plik $P"
fi

for dir in "$@"; do
 if [ -d "$dir" ]; then
  count=$(ls -A "$dir" | wc -l)
   if [ "$count" -le 11 ]; then
    echo "$dir $count" >> "$P"
   fi
  fi
done
echo "wynik zapisano do pliku $P"
