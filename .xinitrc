#!/bin/sh

# export TERM=xterm-256color
# export EDITOR=nvim
# export PAGER=most
# export MANPAGER=$PAGER
# export BROSWER=firefox
# export PATH=$PATH:$HOME/go/bin:$HOME/.local/bin
# export GOPATH=$HOME/go
# export MOZ_USE_XINPUT2=1
export _JAVA_AWT_WM_NONREPARENTING=1


xrdb -merge "$HOME/.cache/wal/colors.Xresources"
xrdb -merge "$HOME/.Xresources"

if xrandr | grep "HDMI1 connected"; then
	xrandr --output eDP1 --off
	xrandr --output HDMI1 --dpi 100 --primary
else
	export GDK_SCALE=2
	/usr/lib/gsd-xsettings &
	xrandr --output eDP1 --dpi 200 --primary
fi

xsetroot -cursor_name left_ptr

setxkbmap -layout "gb,us,es" -option "grp:shifts_toggle"
setxkbmap -option "caps:swapescape"
setxkbmap -option "eurosign:e"

wal -R

"$HOME/.bin/launch_compton.sh" &
"$HOME/.bin/launch_polybar.sh" &

redshift &

session=${1:-bspwm}

case $session in
	bspwm	) exec bspwm;;
	2bwm	) 2bwm &;;
	*		) exec "$1";;
esac

# 2bwm &
# exec termite -e fish

