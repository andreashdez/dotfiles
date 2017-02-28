export TERM=xterm-256color
export ANDROID_HOME=/opt/android-sdk/
export PATH=${PATH}:~/.android-sdk/platform-tools:/~/.android-sdk/tools
export EDITOR=nvim

source ~/.zplug/init.zsh

zplug "mafredri/zsh-async", from:github, defer:0

zplug "lib/completion", from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:2

zplug "zplug/zplug", hook-build:"zplug --self-manage"

zplug "sindresorhus/pure", use:purity.zsh, from:github, as:theme

zplug load

# zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# compinstall
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit # tab-completion
compinit

