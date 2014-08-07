#!/usr/bin/env bash

echo "New File Name:"
read new_bash
echo "~/BashScripts/"$new_bash".sh CREATED"
nanome="~/BashScripts/"$new_bash".sh"

echo "#!/usr/bin/env bash" > ~/BashScripts/$new_bash".sh"
echo "" >> ~/BashScripts/$new_bash".sh"
echo ""

nano $nanome
