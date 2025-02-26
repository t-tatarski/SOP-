#!/bin/bash
#so0168
#skrypt do sprawdzania stanu serwera
clear
echo "użycie: podaj adres serwera : www.xxxxxx.xxx"
echo "przerwij uzywajac kombinacji ctrl + Z"
echo "czestotliwosc pingowania 8 sekund"
echo "--------------------------------------------"
read -p "podaj adres serwera :" serv
while true; do
 DATE=$(date '+%H:%M:%S %d-%m-%Y')
 ping -c 1 "$serv" > /dev/null 2>&1
 if [ $? -eq 0 ]; then
 echo "$DATE serwer odpowiada"
 echo "$DATE connect">>serve_$serve_status.log
 else
 echo "$DATE serwer nie odpowiada"
 echo "$DATE disconnect">>serve_$serve_status.log
 fi
sleep 8
done
