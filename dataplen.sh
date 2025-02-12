#!/bin/bash
#so0168
#skrypt wypisuje date w jezyku polskim lub angielskim w zaleznosci od wyboru"

if [ "$#" -lt 1 ]; then
 echo "nie podałeś argumentu. wzór $0 p  lub e  # data po polsku"
 exit 1
fi
case "$1" in
 p) LC_TIME=pl_PL.UTF-8 ;;
 e) LC_TIME=en_US.UTF-8 ;;
 *) echo "brak własciwego argumentu"
    exit 2 ;;
esac
date +"%A, %d %B %Y"
