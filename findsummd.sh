#!/bin/bash

for plik in *; do 

if [[ -f "$plik" ]]; then
 if [[ "$plik" =~ \([0-9]\).... ]]; then
  echo "znalezione $plik"
  rm $plik
 fi 
fi 
done
