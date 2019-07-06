#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

if xrandr | grep "HDMI1 connected"; then
	polybar bottom_ext &
else
	polybar bottom &
fi

