#!/bin/bash
# so0168
# w argumencie podaj nazwe pliku z liter i cyfr zliczyc ile ich jest

if [ $# -lt 1 ]; then
 echo "skrypt musi posiadać argument"
 sleep 4
 exit 1
fi
if [ ! -f "$1" ]; then
 echo "argument nie jest plikiem"
 exit 1
fi
plik=$1
li=1
cy=0

grep -o . "$plik" | while IFS= read -r znak; do
 echo "znak $znak"
if [[ "$znak" =~ ^[0-9]$ ]]; then
((cy+=1))
echo "cyfra to"
fi
if [[ "$znak" =~ ^[a-zA-Z]$ ]]; then
((li++))
fi
done
echo "liter jest $li a cyfr: $cy "
