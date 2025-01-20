#!/bin/bash
#podaje liczbę ukrytych katalogów w biezacym katalogu
ls -ld .*/ | grep ^d | wc -l
