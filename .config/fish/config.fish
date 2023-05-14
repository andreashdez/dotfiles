if status is-interactive
  fish_add_path "/home/andreas/.cargo/bin/"
  fish_add_path "/home/andreas/.local/bin/"

  #set --export PAGER /usr/bin/moar
  #set --export MOAR '--no-linenumbers --statusbar=inverse --style=vulcan'

  set fish_greeting

  set fish_color_command white --bold

  set fish_cursor_default block
  set fish_cursor_insert line
  set fish_cursor_visual underscore

  abbr --add ll 'exa -l'
  abbr --add llr 'exa -lR'
  abbr --add lla 'exa -la'
  abbr --add vi 'lvim'
  abbr --add hh 'history | sk'

  alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

  fish_vi_key_bindings
  tmux_chooser

end

function tere
  set --local result (command tere $argv)
  [ -n "$result" ] && cd -- "$result"
end

