export CLICOLOR=on
export PS1="\h:\w \u\$ "

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH="/usr/local/bin:/usr/local/mysql/bin:/usr/local/sbin:$PATH"

export NODE_PATH="/usr/local/lib/node_modules"

export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a Terminal"'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
