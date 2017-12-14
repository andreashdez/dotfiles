#!/bin/sh

export TERM=xterm-256color
export EDITOR=nvim
export TERMINAL=termite
export PAGER=most
export MANPAGER=$PAGER
export BROSWER=google-chrome-stable
export PATH=$HOME/.cargo/bin:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1
#export GDK_SCALE=2

xrdb -merge $HOME/.Xresources
xrdb -merge $HOME/.wallpapers/current.Xres

xrandr --output HDMI-1 --dpi 100 --right-of eDP-1
xrandr --output eDP-1 --dpi 200 --primary

xsetroot -cursor_name left_ptr
setxkbmap -layout "gb,es" -option "grp:shifts_toggle"

$HOME/.wallpapers/wp_init.sh &
$HOME/.bin/launch_compton.sh &
$HOME/.bin/launch_polybar.sh &

# bspwm
exec bspwm

# 2bwm
#2bwm &
#exec termite

