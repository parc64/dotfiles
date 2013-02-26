export TERM="xterm-256color"

ZSH=$HOME/.oh-my-zsh
export EDITOR="vim"

ZSH_THEME="minimal"

# ALIAS
alias top="top -o cpu"
alias top_commands="history | awk {'print $2'} | sort | uniq -c | sort -k1 -rn | head"

# alias vi="vim +NERDTree"
# alias vim="vim +NERDTree"
# alias gvim="gvim +NERDTree"

#alias emacs="open ~/Applications/Emacs.app --args ${@}"

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

PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/sbin:/opt/X11/bin:~/.cabal/bin:~/src/deploy_noesis/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/bin/sbin:~/.npm:/Applications/MATLAB_R2012b.app/bin/maci64

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export NODE_PATH=/usr/local/lib/node_modules
