#!/bin/bash
#so0168

if [ "$#" -lt 1 ]; then
 echo "skrypt musi miec argumenty. wzor $0 <arg1> <arg2>"
 exit 1 
fi
adresat=$(whoami)
datawys=$(date +"%D-%M-%Y")

for (( i=0;i<"$#";i++ )); do
echo "argument ${!i}"
echo "data wyslania $datawys"
echo "z poważaniem, $adresat"

echo "pozdrowienia z zajec sop" | mail -s "wiadomosc od $adresat" ${!i}

done
