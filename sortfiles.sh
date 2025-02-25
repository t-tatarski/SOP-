#!/bin/bash
#so0168

clear
echo "sortowanie plików w katalogu bierzacym"
echo "--------------------------------------"
mkdir  Manuale Skrypty Inne
for plik in *; do 
 case "$plik" in
 *.txt|*.pdf|*.txt|*.odt) mv "$plik" ManualeTeksty/ ;;
 *.sh) mv "$plik" SkryptyProgramy/ ;;
 *) mv "$plik" InneRzeczy ;;
 esac
done
echo "sortowanie ukonczone"
