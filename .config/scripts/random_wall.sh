#!/usr/bin/env bash

DIR=$HOME/hypr-dotfiles/wallpapers/
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}
WALL=${DIR}/${RANDOMPICS}

#change-wallpaper using swww
swww img ${WALL} --transition-fps 60 --transition-duration 3
wal -c
wal -i ${WALL}
