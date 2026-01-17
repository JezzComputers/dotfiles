#!/bin/bash

chosen=$(printf "󰩬   Region\n󰨇   Output\n󰹑   Window\n󰍹   Active" | rofi -dmenu -i -p "Screenshot")

case "$chosen" in
    "󰩬   Region") hyprshot -m region ;;
    "󰨇   Output") hyprshot -m output ;;
    "󰹑   Window") hyprshot -m window ;;
    "󰍹   Active") hyprshot --mode active --mode window ;;
esac
