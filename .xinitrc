#!/bin/sh

export _JAVA_AWT_WM_NONREPARENTING=1

xrdb -merge ~/.Xresources

xrandr --output HDMI-1 --dpi 100 --right-of eDP-1
xrandr --output eDP-1 --dpi 200 --primary

xsetroot -cursor_name left_ptr &
setxkbmap -layout "gb,es" -option "grp:shifts_toggle" &

~/.bin/launch_compton &
#~/.bin/launch_mpd &
~/.bin/launch_polybar &

feh --bg-fill ~/Pictures/wp.jpg --no-fehbg &

/usr/lib/gnome-settings-daemon/gsd-xsettings &


exec bspwm

