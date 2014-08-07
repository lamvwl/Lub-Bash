#!/usr/bin/env bash

echo ""
echo "This tool will identify a visible application's WINDOW ID and a PID."
echo "SEARCH FOR: (can be partial)"
read varprocess
echo ""

echo "xdo search --any --sync --onlyvisible "$varprocess
echo ""
echo "WINDOW ID:"
xdotool search --any --sync --onlyvisible $varprocess
echo "xdotool search --any --sync --onlyvisible "$varprocess" getwindowpid"
echo ""
echo "PID: "
xdotool search --any --sync --onlyvisible $varprocess getwindowpid
echo ""

echo "RESULTS:"
ps -A | grep $varprocess
echo "ps -A | grep "$varprocess
echo ""


