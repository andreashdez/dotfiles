
if status --is-interactive
	abbr --add --global e 'exa -la'
	abbr --add --global ee 'exa -l'
	abbr --add --global vi 'nvim'
end

set pure_color_right_prompt $pure_color_mute
set pure_right_prompt (date "+%H:%M:%S")

