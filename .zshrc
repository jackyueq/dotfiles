# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# if [ "$TMUX" = "" ]; then tmx; fi


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
source /home/yue.qi/git/zsh-git-prompt/zshrc.sh
source /data00/home/yue.qi/git/zsh-autosuggestions/zsh-autosuggestions.zsh
source /data00/home/yue.qi/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=/usr/lib/google-golang/bin:/usr/local/buildtools/java/jdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/yue.qi/bin:/opt/tiger/ss_bin:/us
r/local/jdk/bin:/usr/bin/opt/tiger/ss_lib/bin:/opt/tiger/typhoon-blade:/usr/local/go/bin:/data00/home/yue.qi/.local/bin
setopt PROMPT_SUBST
PROMPT='%(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f%{$(pwd)%${#PWD}G%}$(git_super_status)> '
export EDITOR='vim '
export LESSOPEN="| /data00/home/yue.qi/git/src-hilite/src-hilite-lesspipe.sh %s"
# export LESS=' -cse -F -X -R -N '
export LESS=' -F -X -N -R '
export TZ=":America/Los_Angeles"
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus
export TOOLCHAIN=x86_64-gcc830
export INFSEC_HADOOP_ENABLED=1

alias ccat='pygmentize -g'
alias cd..='cd ..'
alias cls='clear'
alias dir='vdir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF --color'
alias ls='ls --color'
# alias node="/usr/local/bin/node"
# alias npm="/usr/local/bin/npm"
alias gobyte="cd ~/byted"
alias hg="git"
alias df='df -x tmpfs'
# alias less="view"

setopt no_nomatch # if there are no matches for globs, leave them alone and execute the command
setopt no_cdable_vars # don't use named directories in cd autocompletion

export TERM=xterm-256color

#if [[ ! $TERM =~ screen ]]; then
#    exec tmux
#fi

alias ls='ls --color'
# alias node="/usr/local/bin/node"
# alias npm="/usr/local/bin/npm"
alias gobyte="cd ~/byted"
alias hg="git"
alias df='df -x tmpfs'
# alias less="view"

setopt no_nomatch # if there are no matches for globs, leave them alone and execute the command
setopt no_cdable_vars # don't use named directories in cd autocompletion

export TERM=xterm-256color

#if [[ ! $TERM =~ screen ]]; then
#    exec tmux
#fi

function exists { which $1 &> /dev/null }

if exists percol; then
    function percol_select_history() {
        local tac
        exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
        BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }

    zle -N percol_select_history
    bindkey '^R' percol_select_history
fi
if [ -n "$BASH_VERSION" -a -n "$PS1" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# bindkey "\E[1~" beginning-of-line
# bindkey "\E[4~" end-of-line
