#!/usr/bin/env bash

echo "Localhost: #### ?"
read newlocalhost

google-chrome http://localhost:$newlocalhost
echo ""
