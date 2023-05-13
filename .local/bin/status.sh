#!/bin/sh

printf "   %s         %s        %s        %s        %s   ┊  %s   " \
    "$(brillo)" \
    "$("$HOME/.local/bin/volume_status.sh")" \
    "$("$HOME/.local/bin/network.sh")" \
    "$("$HOME/.local/bin/disk_space.sh")" \
    "$("$HOME/.local/bin/battery_charge.sh")" \
    "$(date +'%Y-%m-%d    %H:%M:%S')"

