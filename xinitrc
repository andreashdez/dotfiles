#!/bin/sh

export TERM=xterm-256color
export EDITOR=nvim
export PAGER=most
export MANPAGER=$PAGER
export BROSWER=firefox
export PATH=$HOME/go/bin:$HOME/.cargo/bin:$PATH
export GOPATH=$HOME/go
export GDK_SCALE=2
export MOZ_USE_XINPUT2=1
export _JAVA_AWT_WM_NONREPARENTING=1

/usr/lib/gsd-xsettings &

xrdb -merge $HOME/.cache/wal/colors.Xresources
xrdb -merge $HOME/.Xresources

# xrandr --output HDMI-1 --dpi 100 --right-of eDP-1
xrandr --output eDP-1 --dpi 200 --primary

xsetroot -cursor_name left_ptr

setxkbmap -layout "gb,es" -option "grp:shifts_toggle"
setxkbmap -option "caps:swapescape"
setxkbmap -option "eurosign:e"

wal -R

$HOME/.bin/launch_compton.sh &
$HOME/.bin/launch_polybar.sh &

redshift &

exec bspwm

# 2bwm &
# exec termite -e fish

