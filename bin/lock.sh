#!/bin/bash

. "$HOME/.cache/wal/colors.sh"

bg_inside="${color5}44"
bg_ver="${color3}44"
bg_wrong="${color1}44"
fg_ring="${color5}ff"
fg_ver="${color3}ff"
fg_wrong="${color1}ff"
fg_action="${color1}ff"
fg_text="${color5}ff"
fg_text_str="${color7}ff"

i3lock \
    --image=$wallpaper --tiling \
    --insidevercolor=$bg_ver --insidewrongcolor=$bg_wrong --insidecolor=$bg_inside \
    --ringvercolor=$fg_ver --ringwrongcolor=$fg_wrong --ringcolor=$fg_ring \
    --linecolor=$fg_ring --separatorcolor=$fg_action --textcolor=$fg_text \
    --keyhlcolor=$fg_action --bshlcolor=$fg_action \
    --force-clock --composite \
    --line-uses-inside \
    --indpos="x+430:h-124" \
    --time-align=1 --date-align=1 --layout-align=1 \
    --timestr="%H:%M" \
    --timepos="x+80:h-ch-24" \
    --timecolor=$fg_text_str --timefont="Oswald" --timesize=64 \
    --datestr="%A %e" \
    --datepos="tx:ty+48" \
    --datecolor=$fg_text --datefont="Oswald" --datesize=48 \
    --veriftext="" --wrongtext="" \
    --textsize=16 --modsize=10 \
    --radius=24 --ring-width=4
    #--bar-indicator \
    #--bar-direction=1 --bar-position="h" \
    #--bar-color=00000000

