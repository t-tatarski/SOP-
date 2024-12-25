#!/bin/bash
#so0168
#zad 4 ad 1

if [ -f "error.txt" ] ; then
touch error.txt
fi

if [ -d "BACKUP" ] ;then
  echo "katalog BACKUP juz istnieje"
else
  echo "katalog BACKUP nie istnieje"
  mkdir "BACKUP"
  cp *.txt "BACKUP" 2> error.txt
fi
ls *.txt
echo "logi bledow:"
cat error.txt

