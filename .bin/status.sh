#!/bin/sh

# printf "     %s  ┊   %s  ┊   %s  ┊   %s " "$(pamixer --get-volume-human)" "$("$HOME/.bin/disk_space.sh")" "$("$HOME/.bin/battery_charge.sh")" "$(date +'%A %e    %H:%M:%S')"

printf " %s       %s      %s      %s      %s   ┊  %s " "$(brillo)" "$(pamixer --get-volume-human)" "$("$HOME/.bin/network.sh")" "$("$HOME/.bin/battery_charge.sh")" "$("$HOME/.bin/disk_space.sh")" "$(date +'%A %e    %H:%M:%S')"

