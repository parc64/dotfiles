" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein')
  " call dein#add('Shougo/deoplete.nvim')

  call dein#add('neoclide/coc.nvim', {'rev': 'release'})

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('tpope/vim-sensible')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-fugitive')

  call dein#add('scrooloose/syntastic')
  call dein#add('scrooloose/nerdtree')

  " file searching
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

  " call dein#add('autozimu/LanguageClient-neovim', { 'rev': 'next', 'build': 'bash install.sh' })

  call dein#add('altercation/vim-colors-solarized')
  call dein#add('majutsushi/tagbar')
  call dein#add('itchyny/lightline.vim')

  call dein#add('airblade/vim-gitgutter')
  call dein#add('Lokaltog/vim-easymotion')

  call dein#add('flazz/vim-colorschemes')
  call dein#add('twerth/ir_black')
  call dein#add('TechnoGate/janus-colors')

  call dein#add('chrisbra/NrrwRgn')
  call dein#add('skalnik/vim-vroom')

  " tag support
  call dein#add('ludovicchabant/vim-gutentags')
  call dein#add('sheerun/vim-polyglot')

  call dein#add('Chiel92/vim-autoformat')

  " Windows management
  call dein#add('simeji/winresizer')

  " Swift
  call dein#add('mitsuse/autocomplete-swift')

  " Rust
  call dein#add('rust-lang/rust.vim')

  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('tmux-plugins/vim-tmux-focus-events')

  call dein#end()
  call dein#save_state()
endif

