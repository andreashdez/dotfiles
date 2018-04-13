#!/bin/bash

cp $HOME/.bin/* ./bin/

cp -r $HOME/.config/bspwm/ ./config/
cp -r $HOME/.config/compton/ ./config/
cp -r $HOME/.config/dunst/ ./config/
cp -r $HOME/.config/ncmpcpp/ ./config/
cp -r $HOME/.config/polybar/ ./config/
cp -r $HOME/.config/rofi/ ./config/
cp -r $HOME/.config/sxhkd/ ./config/
cp -r $HOME/.config/termite/ ./config/
cp -r $HOME/.config/zathura/ ./config/
cp $HOME/.config/mpd/mpd.conf ./config/mpd/
cp $HOME/.config/nvim/init.vim ./config/nvim/
cp $HOME/.config/systemd/user/*.service ./config/systemd/user/
cp $HOME/.config/systemd/user/*.timer ./config/systemd/user/

cp $HOME/.weechat/buffers.conf $HOME/.weechat/weechat.conf ./weechat/

cp $HOME/.xinitrc xinitrc
cp $HOME/.Xresources Xresources
