#!/bin/sh

killall compton

exec compton --config $HOME/.config/compton/config -b

