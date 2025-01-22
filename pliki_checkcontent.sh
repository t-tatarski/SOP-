#!/bin/bash
# so0168

if [ "$#" -eq 0 ]; then
echo "treba podać nazwy plikow w argumentach"
exit 1
fi
for args in "$@"; do
 if [ -f "$args" ]; then
  echo "plik: $args"
  echo "-----------"
  cat $args | wc -l >$args.bak
 fi
done
