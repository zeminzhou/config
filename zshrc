# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export HOME="/root"
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

FZF_BASE=$HOME/.vim/plugged/fzf/
plugins=(
    fzf
    tmux
    extract
    z
    cp
    vi-mode
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export GOPATH=$HOME/go
export GOROOT=$HOME/.local/go
export GO11MODULE=auto
export GOPROXY=https://goproxy.io

export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/.local/bin:$PATH

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

VIMODE='-*-'
function zle-line-init zle-keymap-select {
    VIMODE="${${KEYMAP/vicmd/*-*}/(main|viins)/-*-}"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
RPROMPT='%{$fg[green]%}${VIMODE}%{$reset_color%}'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# tmux
# tl = tmux list-sessions
# tkss = tmux kill-session -t
# ta = tmux attach -t
# ts = tmux new-session -s

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fdfind'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || bat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="--reverse"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

source $HOME/.myconfig/script/fzf-git.sh
alias rfv='$HOME/.myconfig/script/rg-fzf.sh'

# git
alias gaf='git add $(_gf)'
alias gcf='git checkout $(_gf)'
alias gcb='git checkout $(_gb)'
alias gct='git checkout $(_gt)'
alias gch='git checkout $(_gh)'
alias gsl='git checkout $(_gs)'

alias gba='git branch -a'
alias gs='git status'
alias gsh='git stash'
alias gsp='git stash pop'
alias ga='git add'
alias gcm='git commit -s -m'
alias gfa='git fetch -a'
alias gps='git push origin'
alias gpl='git pull origin'
alias grb='git rebase'
alias gcl='git clone'

unalias z 2> /dev/null
z() {
  [ $# -gt 0 ] && _z "$*" && return
  cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}

fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m --reverse | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}
