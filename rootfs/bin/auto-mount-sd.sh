#!/bin/sh

if [ $ACTION = "add" ];
then
	sleep 1
	rm -rf /sdcard
	mkdir /sdcard
	mount -t vfat /dev/mmcblk0p1 /sdcard
	internet_shortcut&
else
	umount /sdcard
	rm -rf /sdcard                                            
fi
