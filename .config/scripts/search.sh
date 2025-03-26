#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-5'

query=$(rofi -dmenu -p "Search DuckDuckGo:" -theme ${dir}/${theme}.rasi)
if [[ -n "$query" ]]; then
    brave "https://duckduckgo.com/?q=$query"
fi
