#!/bin/sh

printf " %s       %s      %s      %s      %s   ┊  %s   " \
    "$(brillo)" \
    "$(pamixer --get-volume-human)" \
    "$("$HOME/.local/bin/network.sh")" \
    "$("$HOME/.local/bin/battery_charge.sh")" \
    "$("$HOME/.local/bin/disk_space.sh")" \
    "$(date +'%Y-%m-%d    %H:%M:%S')"

