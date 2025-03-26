#!/usr/bin/env bash
notify_screenshot() {
    notify-send "Screenshot Taken" "A new screenshot was saved."
}

if [ "$1" = "--screen" ]; then
    grim $HOME/Pictures/Screenshots/$(date +'%d-%Y-%m')_$(uuidgen | cut -c1-8)_grim.png
    notify_screenshot
elif [ "$1" = "--area" ]; then
    grim -g "$(slurp)" $HOME/Pictures/Screenshots/$(date +'%d-%Y-%m')_$(uuidgen | cut -c1-8)_grim.png
    notify_screenshot
elif [ "$1" = "--win" ]; then
    w_pos=$(hyprctl activewindow | grep 'at:' | cut -d':' -f2 | tr -d ' ' | tail -n1)
	w_size=$(hyprctl activewindow | grep 'size:' | cut -d':' -f2 | tr -d ' ' | tail -n1 | sed s/,/x/g)
	grim -g "$w_pos $w_size" $HOME/Pictures/Screenshots/$(date +'%d-%Y-%m')_$(uuidgen | cut -c1-8)_grim.png
	notify_screenshot
fi
