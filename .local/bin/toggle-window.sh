#!/usr/bin/env sh
winid=$(xdotool search --classname $1 | head -n1)
# echo $winid
if ! xprop -id $winid | grep '_NET_WM_STATE(ATOM)' > /dev/null;
then
    # wmctrl -ir $winid -b remove,skip_taskbar,below
    # wmctrl -iR $winid
    xdotool windowmap $winid #windowactivate $winid
    wmctrl -ir $winid -b add,fullscreen
    # echo showing $winid
else
    # wmctrl -ir $winid -b add,skip_taskbar,below
    # xdotool windowminimize $winid
    xdotool windowunmap --sync $winid
    # echo hidding $winid
fi;
