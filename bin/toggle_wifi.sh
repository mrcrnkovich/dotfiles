#! /bin/bash

cur_iw=$(iwctl device wlan0 show | grep "Powered" | tr -s ' ' | cut -d ' ' -f 5)

if [ $cur_iw = "on" ]; then
    toggle="off"
else
    toggle="on"
fi

iwctl device wlan0 set-property Powered $toggle
