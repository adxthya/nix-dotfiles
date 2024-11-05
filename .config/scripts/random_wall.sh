#!/usr/bin/env bash

DIR=$HOME/Pictures/Wallpapers/
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}
WALL=${DIR}/${RANDOMPICS}

#change-wallpaper using swww
swww img ${WALL} --transition-fps 60 --transition-duration 3
wal -c
wal -i ${WALL}
