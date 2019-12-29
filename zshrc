ZSH=$HOME/.oh-my-zsh

export EDITOR="vim"
# export ZSH_TMUX_AUTOSTART=true

ZSH_THEME="simple"
# ZSH_THEME="agnoster"

export ZSH
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi="nvim"
alias grep="`which grep` --color=auto"
alias oni2='/Applications/Onivim2.app/Contents/MacOS/Oni2'
alias nvq='/Applications/nvim-qt.app/Contents/MacOS/nvim-qt'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(aws git textmate ruby lighthouse)
plugins=(ruby rake bundler tmux colorize aws)
source $ZSH/oh-my-zsh.sh

unsetopt correct_all
unsetopt share_history

# minic osx open in linux
# alias open=xdg-open

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="/usr/local/bin:$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
