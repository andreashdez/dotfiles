
## SETTINGS

set fish_greeting

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

abbr --add --global ll 'exa -l'
abbr --add --global llr 'exa -lR'
abbr --add --global lla 'exa -la'
abbr --add --global vi 'nvim'
abbr --add --global hh 'history | sk'

# set --global --export --path PATH "$PATH:$HOME/.cache/cargo/bin:$HOME/.go/bin:$HOME/.local/bin"

set --global fish_cursor_default block
set --global fish_cursor_insert line
set --global fish_cursor_visual underscore

set --global fish_color_command white --bold

set --global tide_right_prompt_suffix ' '

fish_vi_key_bindings

