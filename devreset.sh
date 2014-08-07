#!/usr/bin/env bash

echo ""
echo "This script will turn off and then turn on development programs." 
echo ""
echo "Your CURRENT PATH is:"
echo ""
pwd
echo ""
echo "Enter CURRENT PROJECT PATH '~/ PATH /' :"
echo ""
read curprojectpath
echo $(pidof sublime_text)
kill -9 $(pidof sublime_text)
echo $(pidof google-chrome) 
kill -9 $(pidof google-chrome)
echo ""

cd ~/$curprojectpath
echo "Press ENTER to start SublimeText."
read curprojectpath
subl .
echo "Press ENTER TO start Local Host"
echo "Localhost:XXXX"
read curprojectpath
google-chrome localhost:$curprojectpath

