!/usr/bin/env bash

REMINDER=`zenity --entry --title="Timer" \
--text="What should I do?"`
WAIT=`zenity --entry --title="Timer" \
--text="When should I do this?"`
sleep $WAIT

#play [/home/admin2/Desktop/x.mp3] &
zenity --info --title="Timer" --text="$REMINDER"


