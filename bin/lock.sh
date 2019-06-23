#!/bin/sh

# shellcheck source=/home/andreas/.cache/wal/colors.sh
. "$HOME"/.cache/wal/colors.sh

# bg_inside="${color4}44"
# bg_ver="${color3}44"
# bg_wrong="${color1}44"
# fg_ring="${color4}ff"
# fg_ver="${color3}ff"
# fg_wrong="${color1}ff"
# fg_action="${color1}ff"
fg_text="${color4}ff"
fg_text_str="${color7}ff"

i3lock \
	--image=$wallpaper --tiling \
	--ignore-empty-password \
	--keylayout 1 \
	--layoutpos="w-80:h-64" \
	--force-clock \
	--composite \
	--keyhlcolor=$fg_text --bshlcolor=$fg_text \
	--layoutcolor=$fg_text --layout-font="Oswald" --layoutsize=40 \
	--time-align=1 --date-align=1 --layout-align=2 \
	--timestr="%H:%M" \
	--timepos="80:h-160" \
	--timecolor=$fg_text_str --time-font="Oswald" --timesize=96 \
	--datestr="%A %e" \
	--datepos="tx:ty+80" \
	--datecolor=$fg_text --date-font="Oswald" --datesize=64 \
	--veriftext="" --wrongtext="" \
	--bar-indicator \
	--bar-direction="1" \
	--bar-width="512" \
	--bar-step="48" \
	--bar-max-height="64" \
	--bar-base-width="64" \
	--bar-color=00000000 \
	--bar-periodic-step="4" \
	--bar-position="h"

# --modsize=10

# --indpos="464:h-160" \

# --insidevercolor=$bg_ver --insidewrongcolor=$bg_wrong --insidecolor=$bg_inside \
# --ringvercolor=$fg_ver --ringwrongcolor=$fg_wrong --ringcolor=$fg_ring \
# --linecolor=$fg_ring --separatorcolor=$fg_action \
# --keyhlcolor=$fg_action --bshlcolor=$fg_action \

# --line-uses-inside \

# --radius=48 --ring-width=8

