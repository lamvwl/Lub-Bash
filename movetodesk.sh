#!/usr/bin/env bash

function getdesk_id (){
case $getdesk in 
  0)
    getdesk=0
    ;;
  a|1)
    getdesk=0
    ;;
  s|2)
    getdesk=1
    ;;
  d|3)
    getdesk=2
    ;;
  f|4)
    getdesk=3
    ;;
  *)
    echo "'$getdesk' is NOT a valid desktop!!! Exiting..."
    echo ""
    exit
    ;;
esac
}

function movedesk_id (){
case $movedesk in 
    0)
    movedesk=0
    ;;
  a|1)
    movedesk=0
    echo "Wheeee!!!!"
    ;;
  s|2)
    movedesk=1
    echo "Wheeee!!!!"
    ;;
  d|3)
    movedesk=2
    echo "Wheeee!!!!"
    ;;
  f|4)
    movedesk=3
    echo "Wheeee!!!!"
    ;;
  *)
    echo "'$movedesk' is NOT a valid desktop!!! Exiting..."
    echo ""
    exit
    ;;
esac
}

echo ""
echo "You are on Desktop: "$(xdotool get_desktop)
currentdesk=$(xdotool get_desktop)
currentwin=$(xdotool getactivewindow)
echo "Window ID: "$currentwin

echo "Program you want to move: "
read moveprogname
echo "On Desktop: ??" 
echo "|0|1|2|3| or"
echo "|a|s|d|f|" 
read getdesk
getdesk_id
echo "MOVE TO Desktop: ??" 
echo "|0|1|2|3|"
echo "|a|s|d|f|"
read movedesk
movedesk_id

xdotool search --any --desktop $getdesk $moveprogname set_desktop_for_window $movedesk 

xdotool set_desktop 1
xdotool set_desktop 2
xdotool set_desktop $currentdesk

xdotool windowactivate --sync $currentwin 
