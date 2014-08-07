#!/usr/bin/env bash

currentwin=$(xdotool getactivewindow)
switchdesk=$(xdotool get_desktop)

echo ""
echo "Today is a training day!!!"
echo "MAKE SURE YOU ARE IN THE CORRECT DIRECTORY"
echo ""
pwd

echo ""
echo "OPENING: "
echo "After the prompt: Press ENTER to continue"
echo ""
read -p "VLC..."
sleep 0.5
xdotool key --delay 0 super+r
sleep 0.4
xdotool key --delay 20 v l c 
sleep 0.3
xdotool key --delay 20 Return
sleep 1.0
xdotool key --delay 10 super+Left
sleep 0.3
xdotool windowactivate --sync $currentwin
xdotool key super+r
sleep 0.3
xdotool key --delay 20 p c m a n f m Return
sleep 0.3
xdotool key ctrl+4 
sleep 0.2
xdotool key super+Right
read -p "Waiting...Press ENTER to continue"
let "switchdesk-=1"
sleep 0.2
xdotool search --any --sync --desktop $(xdotool get_desktop) pcmanfm windowactivate
sleep 0.3
xdotool key super+1
sleep 0.3
xdotool search --any --sync --desktop $(xdotool get_desktop) pcmanfm set_desktop_for_window $switchdesk
sleep 0.3
xdotool search --any --sync --desktop $(xdotool get_desktop) vlc windowactivate
xdotool key super+Left
echo "SublimeText..."
subl .
sleep 1.0
xdotool search --any --sync --desktop $(xdotool get_desktop) subl windowactivate
sleep 0.5
xdotool key super+Right
sleep 0.3
xdotool key super+9
xdotool windowactivate --sync $currentwin
echo ""
echo "Preparing Terminal and Local Host via Google Chrome..."
echo "Enter command for server: "
echo "rails s | meteor"
read s_var
echo "Enter Localhost for server: "
echo "localhost:XXXX"
read lh_var
currentwin=$(xdotool getactivewindow)

xdotool key ctrl+shift+t
sleep 0.3
xdotool key ctrl+shift+i
sleep 0.3
xdotool key --delay 20 ${s_var:0:1} ${s_var:1:1} ${s_var:2:1} ${s_var:3:1} ${s_var:4:1} ${s_var:5:1} ${s_var:6:1} ${s_var:7:1}
xdotool key Tab Tab Return
xdotool key --delay 20 ${s_var:0:1} ${s_var:1:1} ${s_var:2:1} ${s_var:3:1} ${s_var:4:1} ${s_var:5:1} ${s_var:6:1} ${s_var:7:1}
xdotool key ctrl+shift+t

xdotool key ctrl+shift+i
sleep 0.3
xdotool key --delay 20 l h colon ${lh_var:0:1} ${lh_var:1:1} ${lh_var:2:1} ${lh_var:3:1} 
xdotool key Tab Tab Return
xdotool key --delay 20 d e v l h Return
sleep 0.3
xdotool key --delay 20 ${lh_var:0:1} ${lh_var:1:1} ${lh_var:2:1} ${lh_var:3:1} Return
sleep 2.0
xdotool search --any --sync --onlyvisible chrome windowactivate --sync windowsize 50% 50%
xdotool key super+7
sleep 0.3 
xdotool windowactivate --sync $currentwin
xdotool key ctrl+Next
xdotool key super+3

echo ""
echo "Training Day READY..."
