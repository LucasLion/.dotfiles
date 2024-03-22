# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    .zshrc                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: llion <llion@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/20 21:36:18 by llion@stude       #+#    #+#              #
#    Updated: 2024/03/22 13:08:55 by llion@student    ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

export PATH="$HOME/scripts:$PATH"
export PATH="/goinfre/llion/flutter/bin:$PATH"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"
export SHELL="/bin/zsh"
export GRADLE_USER_HOME="/goinfre/llion/build_gradle"
export FLUTTER_BUILD_DIR="/goinfre/llion/build_flutter"
export ANDROID_SDK_ROOT="/goinfre/llion/"

alias winhome="/home/noil/"
alias b='buku --suggest'
alias emacs='emacsclient -c -a "emacs"'
alias vim="flatpak run io.neovim.nvim"
alias logout="i3-msg quit"
alias pipes="/usr/local/bin/pipes.sh -s10 -r20000 -f30 -R -t3 -p3"
alias la='ls -A'
alias weather='curl wttr.in'
alias c='clear'
alias pman="sudo pacman"
alias ll="ls -la"
alias l="ls -l"
alias dwarf="alacritty --config-file $HOME/.config/alacritty/dwarffortress.yml -o working-directory=$(pwd) -e dwarffortress; exit"
alias bare='/usr/bin/git --git-dir=$HOME/.bare.git --work-tree=$HOME'
#alias flutter="/goinfre/llion/flutter/bin/flutter"

cx() { cd "$@" && ls -la; }


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


export OPENAI_API_KEY="ds"

