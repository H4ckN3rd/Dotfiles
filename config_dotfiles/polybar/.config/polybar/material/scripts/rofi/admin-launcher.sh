#!/bin/bash
# ~/.config/polybar/material/scripts/admin-launcher.sh

apps="wireshark
networkmanager"

chosen=$(echo -e "$apps" | rofi -dmenu -p "Admin Apps:")

if [ -n "$chosen" ]; then
    pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY "$chosen"
fi