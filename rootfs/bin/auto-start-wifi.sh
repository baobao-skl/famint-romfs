#!/bin/sh


if [ $ACTION = "add" ];
then
   ifconfig eth0 down
   wpa_supplicant -B -iwlan0 -c/etc/wpa_supplicant.conf
   wpa_cli -a/sbin/wpa_action.sh -B&
    
else
    killall -9 wpa_cli
    killall -9 wpa_supplicant
    killall -9 udhcpc
    ifconfig eth0 up
fi
