#!/bin/bash
#so0168

function maxval(){
plik=$1
maxn=0
while read -r nbr ; do
echo "$nbr"
if [ $maxn -lt $nbr ]; then
((maxn=nbr))
fi
done < "$plik"

echo "najwyzsza liczba to $maxn"
}

if [ $# -lt 1 ]; then
echo "nie dodano argumentu do skryptu"
exit 1
elif [ ! -f $1 ]; then
echo "argument nie jest plikiem"
exit 1
else
plik=$1
fi
while read -r ; do
echo " $nbr"
done < "$plik"

echo "plik dodany do skryptu to $plik"
maxval $plik
