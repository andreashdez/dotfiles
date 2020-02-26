
## SETTINGS

set fish_greeting

# set -U  fish_user_paths            /usr/local/opt/openssl/bin ~/bin $HOME/.asdf/shims
# set -gx FZF_DEFAULT_OPTS           '--height=50% --min-height=15 --reverse'
# set -gx FZF_DEFAULT_COMMAND        'rg --files --no-ignore-vcs --hidden'
# set -gx FZF_CTRL_T_COMMAND         $FZF_DEFAULT_COMMAND
# set -gx EVENT_NOKQUEUE             1
# set -gx EDITOR                     nvim
# set -gx HOMEBREW_FORCE_VENDOR_RUBY 1
# set -gx GPG_TTY                    (tty)
# set -gx ASDF_DIR                   /usr/local/opt/asdf

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

if status --is-interactive
    abbr --add --global l 'exa -la'
    abbr --add --global ll 'exa -l'
    abbr --add --global vi 'nvim'
    abbr --add --global hh 'history | fzf'
end

# ## SOURCES
# [ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
# [ -f /usr/local/opt/asdf/asdf/asdf.fish ]; and source /usr/local/opt/asdf/asdf.fish

# ## GPG
# gpg-agent --daemon --no-grab >/dev/null ^&1

# ## TMUX
# if status --is-interactive
#     and command -s tmux >/dev/null
#     and not set -q TMUX
#     exec tmux new -A -s (whoami)
# end

fish_vi_key_bindings

starship init fish | source

