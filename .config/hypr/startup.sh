#!/usr/bin/env bash

sleep 2
exec waybar &
exec blueman-applet &
exec swww-daemon &
exec nm-applet &
exec swaync &
exec systemctl restart --user polkit-gnome-authentication-agent-1 &
