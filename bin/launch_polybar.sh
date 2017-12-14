#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

polybar bottom &

if xrandr | grep "HDMI1 connected"; then
    polybar bottom_ext &
fi

