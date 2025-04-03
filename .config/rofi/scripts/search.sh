#!/usr/bin/env bash

dir="$HOME/.config/rofi/config"
theme='search'

query=$(rofi -dmenu -p "Search DuckDuckGo:" -theme ${dir}/${theme}.rasi)
if [[ -n "$query" ]]; then
    brave "https://duckduckgo.com/?q=$query"
fi
