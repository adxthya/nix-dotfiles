#!/usr/bin/env bash

sleep 5
exec waybar &
exec lxqt-policykit-agent &
exec hyprctl setcursor BreezeX-RosePineDawn-Linux 24
