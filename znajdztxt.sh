#!/bin/bash
#so0168

if [ $# -lt 1 ]; then 
  echo "nie podano argumentu. uzycie: $0 katalog"
exit 1
fi
if [ ! -d "$1" ]; then
  echo "nie podano katalogu"
exit 1
fi
ls -l "$1" | grep "^d" | awk '{print $NF}'

find "$1" -type f | grep ".txt$" | xargs rm -v

