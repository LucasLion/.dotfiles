
export token="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"
export QT_QPA_PLATFORMTHEME=qt5ct

alias winhome="/home/noil/"
alias b='buku --suggest'
alias emacs='emacsclient -c -a "emacs"'
alias vim="nvim"
alias logout="i3-msg quit"
alias pipes="/usr/local/bin/pipes.sh -s10 -r20000 -f30 -R -t3 -p3"
alias ls="exa --icons"
alias la='ls -A'
alias weather='curl wttr.in'
alias c='clear'
alias pman="sudo pacman"
alias ll="ls -la"
alias l="ls -l"
alias cat="bat"
alias dwarf="alacritty --config-file $HOME/.config/alacritty/dwarffortress.yml -o working-directory=$(pwd) -e dwarffortress; exit"
alias bare="/bin/git --git-dir=$HOME/.bare/ --work-tree=$HOME"

# zsh native config
HISTFILE=~/.config/zsh/histfile
HISTSIZE=10000
SAVEHIST=10000
HIST_IGNORE_DUPS=true
HIST_IGNORE_SPACE=true
bindkey '^[[A' history-beginning-search-backward

setopt EXTENDED_HISTORY
bindkey -v
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

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

function history() {
	fc -l 1
}

# autostartx
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx "home/noil/.config/X11/xinitrc"
fi

