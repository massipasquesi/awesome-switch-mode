#!/bin/sh
cd ~/.config/awesome/
lsrc=$(ls -l rc-include.lua)
echo $lsrc
if echo "$lsrc" | grep "clean" > /dev/null 2>&1 
then
    ln -fs mod-test.lua rc-include.lua
else
    ln -fs mod-clean.lua rc-include.lua
fi
    
lsrc=$(ls -l rc-include.lua)
zenity --info --text="$lsrc"

