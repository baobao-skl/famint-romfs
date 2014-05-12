#!/bin/sh
IFNAME=$1
CMD=$2

if [ "$CMD" = "CONNECTED" ]; then

    udhcpc -i $IFNAME&
fi

if ["$CMD" = "DISCONNECTED" ]; then
    killall -9 udhcpc
fi
