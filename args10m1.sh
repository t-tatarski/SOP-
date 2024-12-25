#!/bin/bash 
if [ $# -lt "2" ] ; then 
echo "usage: $0 text1 text2" 
exit 1 
fi
if [ $1 -eq $2 ] ; then 
echo 
0 
elif [ $1 -lt $2 ] ; then
echo
-1
else
echo
1
fi
