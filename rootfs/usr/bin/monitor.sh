#!/bin/sh
while true
do
        pgrep dev_manage > /dev/null
        if [ ! $? -ne 1 ];
        then
                dev_manage&
                echo "watch process will be start!"
        fi
        sleep 1
done
