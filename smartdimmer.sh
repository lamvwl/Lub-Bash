#!/usr/bin/env bash

echo ""
get_date=$(date)
echo $get_date
echo ${get_date:10:3}

if (("${get_date:10:3}" >= "23")) || (("${get_date:10:3}" <= "7")); then
(xbacklight =2) 
echo "It's night-time :)"; 
else 
echo "ended" 
fi 

