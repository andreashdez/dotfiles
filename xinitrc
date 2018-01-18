#!/bin/sh

export TERM=xterm-256color
export EDITOR=nvim
export PAGER=most
export MANPAGER=$PAGER
export BROSWER=google-chrome-stable
export PATH=$HOME/go/bin:$HOME/.cargo/bin:$PATH
export GOPATH=$HOME/go
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_USE_XINPUT2=1

xrdb -merge $HOME/.wallpapers/current.Xres
xrdb -merge $HOME/.Xresources

xrandr --output HDMI-1 --dpi 100 --right-of eDP-1
xrandr --output eDP-1 --dpi 200 --primary

xsetroot -cursor_name left_ptr
setxkbmap -layout "gb,es" -option "grp:shifts_toggle"

$HOME/.wallpapers/wp_init.sh &
$HOME/.bin/launch_compton.sh &
$HOME/.bin/launch_polybar.sh &

exec bspwm
# exec openbox

# 2bwm &
# exec termite

