# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

if [ "$TMUX" = "" ]; then tmux; fi


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
source /home/yueqi/git/zsh-git-prompt/zshrc.sh

export PATH=/usr/lib/google-golang/bin:/usr/local/buildtools/java/jdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/yueqi/bin
setopt PROMPT_SUBST
PROMPT='%(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f%{$(pwd)%${#PWD}G%}$(git_super_status)> '
export EDITOR='vim '
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R -N '
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus

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
alias newsmth='luit -encoding gbk telnet bbs.newsmth.net'
alias node="/usr/local/bin/node"
alias npm="/usr/local/bin/npm"

function t(){ wget -qO- "http://fanyi.youdao.com/openapi.do?keyfrom=leecade&key=54015339&type=data&doctype=json&version=1.1&q=$1" | grep -oP '(?<="explains":\[")[^"]*'; }

function quote() { curl -s "http://download.finance.yahoo.com/d/quotes.csv?s=$1&f=l1"
}

setopt no_nomatch # if there are no matches for globs, leave them alone and execute the command
setopt no_cdable_vars # don't use named directories in cd autocompletion

#if [[ ! $TERM =~ screen ]]; then
#    exec tmux
#fi
