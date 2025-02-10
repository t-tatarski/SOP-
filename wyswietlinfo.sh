#!/bin/bash
#so0168

if [ "$#" -eq 0 ]; then
 echo "nie podano argumentow skryptu. Wzor: $0 <katalog>"
 exit 1
fi
if test ! -d  "$1" ; then
 echo "podany argument nie jest katalogiem"
 exit 2
fi
if [ ! -r "$1" ]; then
 echo "podany argument nie jest do odczytu"
 exit 3
fi
kat="$1"
ls "$kat"
echo " plikow tekstowych w katalogu jest:"
ls "$kat" | grep ".txt$" | wc -l
