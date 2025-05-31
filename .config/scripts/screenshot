#!/usr/bin/env bash

# Generate screenshot filename once
filename="$HOME/Pictures/Screenshots/$(date +'%d-%Y-%m')_$(uuidgen | cut -c1-8)_grim.png"

notify_screenshot() {
    notify-send "Screenshot Taken" "Screenshot saved to $filename"
}

# Create Screenshots directory if it doesn't exist
mkdir -p "$HOME/Pictures/Screenshots"

if [ "$1" = "--screen" ]; then
    grim "$filename" && notify_screenshot

elif [ "$1" = "--area" ]; then
    grim -g "$(slurp)" "$filename" && notify_screenshot

elif [ "$1" = "--win" ]; then
    w_pos=$(hyprctl activewindow | grep 'at:' | cut -d':' -f2 | tr -d ' ' | tail -n1)
	w_size=$(hyprctl activewindow | grep 'size:' | cut -d':' -f2 | tr -d ' ' | tail -n1 | sed s/,/x/g)
    grim -g "$w_pos $w_size" "$filename" && notify_screenshot
fi
