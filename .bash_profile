export CLICOLOR=coloron
# export LSCOLORS=cxfxCxdxbxegedabagacad
export PS1="\h:\w \u\$ "

export SERVICE_REGISTRY_URL="http://dev1.consensuspoint.com:2000"

export PATH="/Users/jason/.cabal/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/sbin:~/src/deploy_noesis/bin:$PATH"

export NODE_PATH="/usr/local/lib/node_modules"

alias git=hub

export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a Terminal"'

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

[[ -s "/Users/jason/.rvm/scripts/rvm" ]] && source "/Users/jason/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
