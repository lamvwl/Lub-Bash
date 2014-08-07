#!/usr/bin/env bash

echo "New Link Name: (NAME.desktop)"
read new_desktop_link

echo "Path for New Link:(~/ PATHNAME /)"
read new_path_link
echo ""

echo "URL for New Link: (Include 'http(s)://')"
echo "NOTE: For '.com' URLs only, append with '/.' suffix (Lubuntu bug)"
read new_desktop_url
echo ""

echo "[Desktop Entry]" > ~/$new_path_link"/"$new_desktop_link".desktop"
echo "Type=Link" >> ~/$new_path_link"/"$new_desktop_link".desktop"
echo "Version=1.0" >> ~/$new_path_link"/"$new_desktop_link".desktop"
echo "Name="$new_desktop_link >> ~/$new_path_link"/"$new_desktop_link".desktop"
echo "Icon=text-html" >> ~/$new_path_link"/"$new_desktop_link".desktop"
echo "URL="$new_desktop_url >> ~/$new_path_link"/"$new_desktop_link".desktop"

echo "~/"$new_path_link"/"$new_desktop_link".desktop CREATED"
echo ""
cat ~/$new_path_link"/"$new_desktop_link".desktop"
echo ""
