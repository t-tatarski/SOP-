#!/bin/bash
#so0168
#pokaz pliki do odczytu w obecnym katalogu


for plik in *; do
if [ -f "$plik" ] && [ -r "$plik" ]; then
echo "plik $plik jest do odczytu"
fi
done
