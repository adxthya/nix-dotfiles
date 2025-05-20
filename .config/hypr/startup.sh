#!/usr/bin/env bash

sleep 2
exec waybar &
exec lxqt-policykit-agent &
exec hyprctl setcursor BreezeX-RosePineDawn-Linux 24 &
exec blueman-applet &
exec swww-daemon &
exec nm-applet &
exec localsend_app &
