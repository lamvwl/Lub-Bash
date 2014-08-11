#!/usr/bin/env bash

echo ""
echo "This program will extract your .rar file."
echo "Make sure you are in the directory containing the .rar archive"
echo ""
echo "Create a new directory in current working directory?? Enter y(es) or n(o)."
echo "n(o) will extract to current directory..."
read rar_name

case $rar_name in 
    y)
    echo "Paste in the name of the first rar file of archive:"
    read rar_name
    echo "Extract to new folder: "
    read directory_name
    mkdir $directory_name
    pcmanfm $(pwd)/$directory_name
    echo "unrar e $rar_name $(pwd)/$directory_name"
    unrar e $rar_name $(pwd)/$directory_name
    echo ""
    ;;
    n)
    echo "Paste in name first rar file of archive:"
    read rar_name
    unrar e $rar_name 
    echo ""
    ;;
  *)
  exit
    ;;
esac

