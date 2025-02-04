#!/bin/bash
#so0168
# Napisz skrypt bash  który wypisze nazwy tych katalogów
# z katalogu bieżącego,
# które zwierają co najmniej jeden plik do odczytu

for dir in */; do
if [ -d "$dir" ]; then
 if find "$dir" -maxdepth 1 -type f -r | grep -q .; then
 echo "$dir"
fi
fi
done
