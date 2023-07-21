# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    .zshrc                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: llion@student.42mulhouse.fr </var/spool/m  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/20 21:36:18 by llion@student     #+#    #+#              #
#    Updated: 2023/07/21 12:04:27 by llion@student    ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

export PATH="$HOME/scripts:$PATH"

alias winhome="/home/noil/"
alias b='buku --suggest'
alias emacs='emacsclient -c -a "emacs"'
alias vim="nvim"
alias logout="i3-msg quit"
alias pipes="/usr/local/bin/pipes.sh -s10 -r20000 -f30 -R -t3 -p3"
alias ls="exa"
alias la='ls -A'
alias weather='curl wttr.in'
alias c='clear'
alias pman="sudo pacman"
alias ll="ls -la"
alias l="ls -l"
alias dwarf="alacritty --config-file $HOME/.config/alacritty/dwarffortress.yml -o working-directory=$(pwd) -e dwarffortress; exit"
alias bare='/usr/bin/git --git-dir=$HOME/.bare.git --work-tree=$HOME'

cx() { cd "$@" && ls -la; }

eval $(thefuck --alias)

# zsh native config
HISTFILE=~/.config/zsh/histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
bindkey '^[[A' history-beginning-search-backward
export KEYTIMEOUT=1
zstyle :compinstall filename '/home/noil/.zshrc'
autoload -Uz compinit
compinit


autoload -U colors && colors

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '[➜%b]'
setopt PROMPT_SUBST

PROMPT='%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]${vcs_info_msg_0_}%{$reset_color%}$%b '
#PROMPT='%n in ${vcs_info_msg_0_} '  

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# autostartx
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx "home/noil/.config/X11/xinitrc"
fi

