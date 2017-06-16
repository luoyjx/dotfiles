# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH=/Users/walnut/.oh-my-zsh

# ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias notes="cd /Users/walnut/Notes/notebooks"
alias work="cd /Users/walnut/Work"
alias shimo="cd /Users/walnut/Work/Shimo"
#export http_proxy=127.0.0.1:1087
#export https_proxy=127.0.0.1:1087
#export rsync_proxy=127.0.0.1:1087

export PATH="/opt/tools/arcanist/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# set and unset proxy
proxy () {
  export http_proxy="http://127.0.0.1:1087"
  export https_proxy="http://127.0.0.1:1087"
  echo "HTTP Proxy on"
}

noproxy () {
  unset http_proxy
  unset https_proxy
  echo "HTTP Proxy off"
}
