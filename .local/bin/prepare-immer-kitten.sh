#!/usr/bin/env sh

sleep 3
echo $1 to $2 
echo `xdotool search --classname $1` 

xdotool search --classname $1 \
    set_window --classname $2 \
    windowunmap --sync 

