#!/usr/bin/env bash

echo "List applications of which Desk ?? |A|S|D|F|"
echo "Press any other key to list all. "
read desktop_num

function deskfindprocess {
  winpid=$(xdotool search --any --desktop $desktop_num ^.*$ getwindowpid %@)
  winarray=($winpid)
  echo "Desktop" $desktop_name
  i=0 
  if [ $i == "${#winarray[@]}" ]
    then 
    echo "EMPTY"
  fi

  until [ $i == "${#winarray[@]}" ]; do 
    ps -A | grep ${winarray[$i]} 
    let i+=1
  done
}

case $desktop_num in 
    0)
    desktop_num=0
    desktop_name='A'
    deskfindprocess
    ;;
  a|1)
    desktop_num=0
    desktop_name='A'
    deskfindprocess
    ;;
  s|2)
    desktop_num=1
    desktop_name='B'
    deskfindprocess
    ;;
  d|3)
    desktop_num=2
    desktop_name='C'
    deskfindprocess
    ;;
  f|4)
    desktop_num=3
    desktop_name='D'
    deskfindprocess
    ;;
  *)
    desktop_num=0
    desktop_name=$desktop_num
    echo "Total Desktops: "$(xdotool get_num_desktops)
    while [[ $desktop_num < $(xdotool get_num_desktops) ]]; do 
    deskfindprocess
    let desktop_num+=1
    desktop_name=$desktop_num
  done
    ;;
esac
