#!/bin/sh

export _JAVA_AWT_WM_NONREPARENTING=1

xrdb -merge ~/.Xresources

xrandr --dpi 200

xsetroot -cursor_name left_ptr &
setxkbmap -layout "gb,es" -option "grp:shifts_toggle" &

~/.bin/launch_polybar &
~/.bin/launch_compton &
~/.bin/launch_mpd &

feh --bg-fill ~/Pictures/wp.jpg &

/usr/lib/gnome-settings-daemon/gnome-settings-daemon &


exec bspwm

