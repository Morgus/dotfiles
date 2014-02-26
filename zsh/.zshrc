autoload -U compinit promptinit colors
compinit
promptinit
colors

# Autocomplete with arrow keys
zstyle ':completion:*' menu select

setopt completealiases

# Ignore duplicate lines in history
setopt HIST_IGNORE_DUPS

setopt printeightbit

bindkey -e

# Command not found hook that searches official repos with unrecognized commands
source /usr/share/doc/pkgfile/command-not-found.zsh

# Prompt text and coloring
PROMPT="%{$fg[blue]%}%B%n%b@%m%{$reset_color%} %{$fg[green]%}%3~%{$reset_color%} %# "
RPROMPT="%{$fg[yellow]%}%?%{$reset_color%}"

# Save history
export HISTFILE=~/.zsh/history
export HISTSIZE=1000
export SAVEHIST=1000

# ls/grep coloring
alias ls='ls --color=auto'
alias grep='egrep --color=auto'
# Auto parent directory creation
alias mkdir='mkdir -p'
# Change to parent directory
alias ..='cd ..'
# xdg-open opens files with default programs
alias open='xdg-open'
# Vi to vim
alias vi='vim'
export EDITOR=/usr/bin/vim
# Check Arch news quickly in terminal
alias checknews='lynx https://www.archlinux.org/'

alias ll='ls -l'
alias lla='ls -la'

# Connect to a media server over ssh (read-only)
function connect_media () {
	sshfs -o ro media@$1: ~/media
}
alias disconnect_media='fusermount -u ~/media'

