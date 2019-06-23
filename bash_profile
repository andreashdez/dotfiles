#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export TERM=xterm-256color
export EDITOR=nvim
export PAGER=most
export MANPAGER=$PAGER
export BROSWER=firefox
export PATH=$PATH:$HOME/go/bin:$HOME/.local/bin
export GOPATH=$HOME/go
export MOZ_USE_XINPUT2=1
# export GDK_BACKEND=wayland
# export GDK_SCALE=2
# export GDK_DPI_SCALE=1

export WALLPAPER=$HOME/Pictures/walls/silas-baisch-1657089-unsplash.jpg


if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
elif [[ ! $DISPLAY && $XDG_VTNR -eq 2 ]]; then
	sway
	exit 0
fi

