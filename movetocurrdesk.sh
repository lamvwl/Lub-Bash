#!/usr/bin/env bash

echo ""
echo "Program you want to move to current desktop: "
read moveprogname
currentdesk=$(xdotool get_desktop)
echo "You are on Desktop: "$(xdotool get_desktop)
currentwin=$(xdotool getactivewindow)
echo "Window ID: "$currentwin

xdotool search --any --desktop 0 $moveprogname set_desktop_for_window $(xdotool get_desktop)
xdotool search --any --desktop 1 $moveprogname set_desktop_for_window $(xdotool get_desktop)
xdotool search --any --desktop 2 $moveprogname set_desktop_for_window $(xdotool get_desktop)
xdotool search --any --desktop 3 $moveprogname set_desktop_for_window $(xdotool get_desktop) 

xdotool set_desktop 1
xdotool set_desktop 2
xdotool set_desktop $currentdesk

xdotool windowactivate --sync $currentwin 
