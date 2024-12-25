#!/bin/bash
#so0168
#zad 4 ad 3
a=0
b=1
if [ $# -lt 1 ] ; then 
 echo "brak argumentow skryptu $0"
else
 n=$1
fi
if [ $1 -lt 1 ] ; then
 $n=1;
fi
for (( i=0; i<n; i++))
do
 echo "$a "
fib=$((a + b))
a=$b
b=$fib
done
