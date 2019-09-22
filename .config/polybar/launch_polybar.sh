#!/bin/sh

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m ~/.config/polybar/launch.sh &
  done
else
  ./launch.sh &
fi
