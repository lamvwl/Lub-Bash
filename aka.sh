#!/usr/bin/env bash

echo "New Alias Name:"
read new_alias
echo "now points to Command: "
read new_filename

echo "alias $new_alias='$new_filename'" >> ~/.bash_aliases 
echo ""
cat ~/.bash_aliases 
echo ""
echo "CREATED ALIAS: '$new_alias => $new_filename'"
echo "LOGOUT or REBOOT for shortcut to take effect."
