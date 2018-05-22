" Plugins

call plug#begin('~/.vim/plugged')

" set runtimepath^=~/github/openfile.vim/

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'

Plug 'jiangmiao/auto-pairs'

Plug 'vim-scripts/Merginal'

Plug 'scrooloose/syntastic'

Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" file searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ap/vim-readdir'

Plug 'terryma/vim-multiple-cursors'

Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'

Plug 'airblade/vim-gitgutter'
Plug 'Lokaltog/vim-easymotion'

Plug 'flazz/vim-colorschemes'
Plug 'twerth/ir_black'
Plug 'TechnoGate/janus-colors'

Plug 'chrisbra/NrrwRgn'
Plug 'sunaku/vim-ruby-minitest'
Plug 'skalnik/vim-vroom'

" tag support
Plug 'ludovicchabant/vim-gutentags'
Plug 'sheerun/vim-polyglot'

Plug 'Chiel92/vim-autoformat'

" Windows management
Plug 'simeji/winresizer'

call plug#end()

