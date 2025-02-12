#!/bin/bash
#so0168
#skrypt zwraca wartosc ujemna gdy pierwszy arg jest mniejszy od drugiego
#jesli jest odwrotnie to dodatnia. Jezeli oba sa rowne zwraca 0
if [ "$#" -lt 2 ]; then 
 echo "musza byc dwa argumenty"
 echo "zastosowanie $0 <arg1> <arg2>"
 exit 1
fi
if [ "$1" -lt "$2" ]; then
 echo "-1"
elif [ "$1" -gt "$2" ]; then
 echo "1"
else
 echo "0"
fi

