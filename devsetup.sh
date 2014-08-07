#!/usr/bin/env bash

currentwin=$(xdotool getactivewindow)
echo ""
echo "Today is a development day!!!"
echo "MAKE SURE YOU ARE IN THE CORRECT DIRECTORY"
echo ""
pwd

echo ""
echo "OPENING: "
echo "After the prompt: Press ENTER to continue"
echo ""
echo "SublimeText..."
read dummy_input
subl .
sleep 2
xdotool windowactivate --sync $currentwin

echo "Preparing Terminal and Local Host via Google Chrome..."
read dummy_input
xdotool key --delay 20 d e v t e r m Return

#echo "Shortcut to Local Host via Google Chrome"
#echo "Input localhost:XXXX"
#read dummy_input
#google-chrome localhost:$dummy_input


