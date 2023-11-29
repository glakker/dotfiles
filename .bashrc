#####################################
# Arch linux
# ~/.bashrc
#####################################
# Optiplex desktop
# DG
#####################################

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=2000
HISTFILESIZE=5000

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERM=xterm-256color

#PS1='[\u@\h \W]\$ '
#PS1='[\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]]\$ '
# colorful
#PS1='\[\e[31m\][\[\e[m\]\[\e[35m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[34m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]$ '
# red $ when error
#PS1='\[\e[0;$(($?==0?0:31))m\]$ \[\e[0m\]'
# colorful and red $ when error
PS1='\[\e[33m\][\[\e[m\]\[\e[35m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[94m\]\w\[\e[m\]\[\e[33m\]]\[\e[m\]\[\e[0;$(($?==0?0:31))m\]$ \[\e[0m\]'


alias ls='ls --color=auto'
alias ll='lsd -al'
#alias ll='ls -alh'
alias la='ls -A'
alias l='ls -C'
alias tree='tree -C'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias rr='source ranger'
alias vim='nvim'
alias vv='vifm'
# fuzzy cd
alias fcd='cd $(fd . '/' -H -t d | fzf --prompt="cd : ")'
# git bare repository for my dotfiles
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotgit/ --work-tree=$HOME'

export EDITOR="nvim"
export VISUAL="nvim"
# bat for mc viewer
export VIEWER=mc-bat.sh
export BAT_THEME="Coldark-Dark"
export PATH="$HOME/.local/bin:$PATH"

eval "$(zoxide init bash)"

# Wayland - Hyprland ---------------------------
export MOZ_ENABLE_WAYLAND=1
export LIBSEAT_BACKEND=logind

# fzf ------------------------------------------
# integrates fzf keybindings in bash
# ----------------------------------------------
# Ctrl+t list files+folders in current directory
# Ctrl+r search history of shell commands
# Alt+c fuzzy change directory
# cd **[tab]
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
# ----------------------------------------------
# uses fd and show hidden files
export FZF_DEFAULT_COMMAND='fd . -H'
#export FZF_DEFAULT_OPTS="--preview='bat --color=always --style=plain,header,grid {} 2>/dev/null' --color='border:black' --preview-window=noborder,right,40%"
# black out separator line created by fzf.vim
export FZF_DEFAULT_OPTS="--color='separator:black'"

# colorful man pages
export MANPAGER='less -s -M +Gg'
export GROFF_NO_SGR=1
man() {
	env \
	LESS_TERMCAP_mb=$(printf "\e[0;35m") \
	LESS_TERMCAP_md=$(printf "\e[0;94m") \
	LESS_TERMCAP_me=$(printf "\e[0m") \
	LESS_TERMCAP_se=$(printf "\e[0m") \
	LESS_TERMCAP_so=$(printf "\e[100;97m") \
	LESS_TERMCAP_ue=$(printf "\e[0m") \
	LESS_TERMCAP_us=$(printf "\e[0;32m") \
	man "$@"
}

# tldr colors
#export TLDR_COLOR_EXAMPLE="blue"
#export TLDR_COLOR_COMMAND="yellow"
#export TLDR_COLOR_PARAMETER="white"
