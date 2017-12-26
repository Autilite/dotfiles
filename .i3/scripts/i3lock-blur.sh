#!/bin/bash
TEMP=$(mktemp --suffix=.png)
LOCK=$HOME/.i3/lock.png
RES=$(xrandr | grep '*' | awk '{print $1}')
 
ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $LOCK \
  -filter_complex "boxblur=5:1,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" \
  -vframes 1 $TEMP \
  -loglevel quiet

i3lock -e -i $TEMP

rm $TEMP
