# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export EDITOR="vim"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jnrowe"
#ZSH_THEME="apple"

# ALIAS
alias cu="curl.rb"
alias srl="curl.rb http://localhost:2000/active_services"
alias srl_qa="curl.rb http://qa1.consensuspoint.com:2000/active_services"
alias top="top -o cpu"
alias top_commands="history | awk {'print $2'} | sort | uniq -c | sort -k1 -rn | head"

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
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx vi-mode rails3 git git-flow ruby rake nyan brew)
source $ZSH/oh-my-zsh.sh

unsetopt correct_all
unsetopt share_history

# Customize to your needs...
export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/sbin:/opt/X11/bin:~/.cabal/bin:~/src/deploy_noesis/bin:/usr/bin:/bin:/usr/sbin:/sbin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export SERVICE_REGISTRY_URL=http://dev1.consensuspoint.com:2000
export NOESIS_BENCHMARKING_LOG="/Users/jason/Desktop/noesis_client_benchmarking.log"
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
