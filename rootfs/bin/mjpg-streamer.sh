#!/bin/sh
if [ $ACTION = "add" ];
then	
	video_server
else
	pgrep mjpg_streamer
	if [ $? -ne 1 ]; then
		killall -9 mjpg_streamer
	fi

fi
