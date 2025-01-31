#!/bin/bash
#so0168

if [ $# -lt 1 ]; then
echo "brak argumentow w skrypcie $0"
exit 1
fi

for plik in "$@"; do
 if [ -f "$plik" ]; then

   liczb=$(grep -o ' CPU[ .,]' "$plik" | wc -l)
  if [ "$liczb" -ge 2 ]; then
  echo "$plik"
  fi 
 fi
done
