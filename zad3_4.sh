#!/bin/bash
#so0168
#zad 4

if [ ! -f  "$1" ] ; then
 echo "nie podano pliku"
else
sort "$1"
fi
