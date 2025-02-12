#         _
# _______| |__  _ __ ___
#|_  / __| '_ \| '__/ __|
# / /\__ \ | | | | | (__
#/___|___/_| |_|_|  \___|

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=9223372036854775807
SAVEHIST=9223372036854775807
setopt autocd notify
unsetopt beep
zstyle :compinstall filename '"$HOME".config/zsh/.zshrc'

#basic tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

#no unwanted/accidental overwrite of files
set -o noclobber

#source functions && functions
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/functions" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/functions"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/envvars" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/envvars"

#"[USER@HOST:PWD]$
source /usr/local/share/zsh/plugins/gitstatus/gitstatus.prompt.zsh
PROMPT="%B%F{red}[%f%F{yellow}%n%f%F{white}@%f%F{cyan}%m%f%F{white}:%f%F{blue}%3~%f%F{red}]%f%F{green}$%f %b"
RPROMPT='%B%F$GITSTATUS_PROMPT'

# cd using fzy
bindkey -s '^f' 'fuzzycdhome\n'
bindkey -s '^r' 'fuzzycdroot\n'
bindkey -s '^p' 'fuzzycppath\n'
bindkey -s '^u' 'fuzzyed\n'
bindkey -s '^o' 'fuzzyman\n'
bindkey -s '^h' 'fuzzyhist\n'

bindkey -s '^a' 'tmuxinator\n'

# Edit line in $EDITOR with ctrl-e:
autoload edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line

#load plugins
# source /usr/share/doc/fzf/examples/key-bindings.zsh #fzf history
# source /usr/share/doc/fzf/examples/completion.zsh #fzf completion using **
source /usr/local/share/zsh/plugins/bd.zsh #change to a parentdirectory without specifying path
source /usr/local/share/zsh/plugins/clipboard.zsh #needed for copyfile & copypath
source /usr/local/share/zsh/plugins/copyfile.plugin.zsh #copies content of a file to clipboard (xorg)
source /usr/local/share/zsh/plugins/copypath.plugin.zsh #copies $PWD (or $PWD/file if specified) to clipboard
source /usr/local/share/zsh/plugins/vi-mode.plugin.zsh #vi mode in shell
source /usr/local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh #auto sugestions
source /usr/local/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh #syntax highlighting; must be loaded last
