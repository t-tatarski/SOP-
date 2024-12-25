#!/bin/bash
#pjatk so0168
#case example
#############
echo `clear`
echo '-------------------'
echo '| wybierz od 1-12 |'
echo '-------------------'
read m
case "$m" in
"1") echo 'styczen' ;;
"2") echo 'luty' ;;
"3") echo 'marzec' ;;
*) echo "nie wybrano"
esac

