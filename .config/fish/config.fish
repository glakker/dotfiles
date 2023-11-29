if status is-interactive
    # Commands to run in interactive sessions can go here
end

### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $fish_user_paths

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type
set EDITOR "nvim"
set VISUAL "nvim"


### PROMPT ###
#set -g fish_prompt_pwd_dir_length 0


### ALIASES ###

alias ls='ls --color=auto'
alias la='ls -A'
alias l='ls -CF'
#alias ll='ls -lah'
alias ll='lsd -al'
#alias ll='exa -alF'
#alias la='exa -a'
#alias l='exa'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias rr='ranger'
alias vim='nvim'
alias vv='vifm'

### ABBREVIATIONS ###
abbr DG "Dombay Gábor"


#### színes man 
set -x LESS_TERMCAP_mb (set_color brblue)
set -x LESS_TERMCAP_md (set_color brblue)
set -x LESS_TERMCAP_me (set_color normal)
set -x LESS_TERMCAP_se (set_color normal)
#set -x LESS_TERMCAP_so (set_color -b blue bryellow)
set -x LESS_TERMCAP_so (set_color -b green black)
set -x LESS_TERMCAP_ue (set_color normal)
set -x LESS_TERMCAP_us (set_color green)

set -x MANPAGER "less -s -M +Gg"

zoxide init fish | source
