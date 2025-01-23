#!/bin/bash
#so0168

curr_usr=$(whoami)

loggd_usrs=$(who | awk '{print $1}' | sort | uniq)

echo "skrypt uruchomiony przez uzytkownika : '$curr_usr' "

for user in $loggd_usrs; do
 if [ "$user" != "$curr_usr" ]; then
 echo "-> $user"
fi

done
