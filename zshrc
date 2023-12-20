HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100

zstyle :compinstall filename '/home/seba/.zshrc'

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
setopt completealiases
setopt HIST_IGNORE_DUPS

autoload -U promptinit
promptinit
prompt redhat

autoload -U colors && colors	# Load colors
PS1="%B%{$fg[green]%}[%{$fg[green]%}%n%{$fg[green]%}@%{$fg[green]%}%M %{$fg[green]%}%~%{$fg[green]%}]%{$reset_color%}$%b "
