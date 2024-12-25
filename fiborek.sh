#!/bin/bash

# Funkcja rekurencyjna do obliczania n-tej liczby Fibonacciego
fibonacci() {
  n=$1
  if [ "$n" -le 1 ]; then
    echo "$n"
  else
    a=$(fibonacci $((n - 1)))
    b=$(fibonacci $((n - 2)))
    echo $((a + b))
  fi
}

# Pobranie wartości n od użytkownika
read -p "Podaj liczbę n dla ciągu Fibonacciego: " n

# Sprawdzenie, czy n jest liczbą całkowitą nieujemną
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
  echo "Podaj prawidłową liczbę całkowitą nieujemną."
  exit 1
fi

# Obliczenie i wyświetlenie ciągu Fibonacciego do n-tego elementu
echo "Ciąg Fibonacciego do n = $n:"
for (( i=0; i<=n; i++ )); do
  echo -n "$(fibonacci $i) "
done
echo

