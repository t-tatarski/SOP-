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

find "$1" -mindepth 1 -maxdepth 1 -type d -print


