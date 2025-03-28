#!/usr/bin/env bash

class=$(playerctl metadata --player=ncspot --format '{{lc(status)}}')
icon=""

if [[ $class == "playing" ]]; then
  info=$(playerctl metadata --player=ncspot --format '{{title}}' | sed -E 's/[-(].*//')
  if [[ ${#info} > 40 ]]; then
    info=$(echo $info | cut -c1-40)"..."
  fi
  text="󰝚 "$info" "$icon
elif [[ $class == "paused" ]]; then
  info=$(playerctl metadata --player=ncspot --format '{{title}}' | sed -E 's/[-(].*//')
  if [[ ${#info} > 40 ]]; then
    info=$(echo $info | cut -c1-40)"..."
  fi
  text=" "$info" "$icon
elif [[ $class == "stopped" ]]; then
  text=""
fi

echo -e "{\"text\":\""$text"\", \"class\":\""$class"\"}"
