#!/bin/sh
cd ~/.config/awesome/
ln -fs mod-test.lua rc-include.lua
lsrc=$(ls -l rc-include.lua)
zenity --info --text="$lsrc"
