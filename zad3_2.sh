#!/bin/bash
#so0168
#zad 3 ad 2

for plik in * ; do
 if [ -f "$plik" ] ; then
  if grep -q "$plik*" "$plik" ; then
  echo "plik '$plik' zawiera swoją nazwę"
  fi
 fi
done
