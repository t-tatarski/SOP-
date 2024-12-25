#!/bin/bash
#so0168

fibonacci() {
n=$1
if [ "$n" -le 1 ] ; then
return 1
else
a=$(fibonacci $((n - 1)))
b=$(fibonacci $((n - 2)))
echo $((a + b))
fi
}

echo "$n liczba ciągu fibonaccjiego to "
echo -n "$(fibonacci $n)"

