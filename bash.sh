#!/bin/bash

echo "Michael is a good boy!"

## WORKING WITH VARIABLES


name="Tiento"

# echo "$name"

password="mmmmmmmm"

passlist=("123445678" "mmmmmmmm" "pass1234" "87654321")

somear=($(nmcli dev wifi list | awk '{print $2}'))

echo "${somear[@]}"
s=2
for i in "${somear[@]}";do
    for j in "${passlist[@]}";do
        echo "connecting to $i, trying password: $j"
        sudo nmcli dev wifi connect "$i" password "$j" #  wifi-sec.key-mgmt wpa-psk 2>/dev/null
        if [ $? -eq 0 ]; then
            echo "Succesfully connected to $i using password: $j"
            s=1
            break
        fi
    done 
    if [ $s -eq 1 ]; then
        break
    fi
done

# sudo nmcli dev wifi connect "Tiento" password "$password" 

