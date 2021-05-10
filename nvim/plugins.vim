" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('Shougo/denite.nvim')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('neoclide/coc.nvim', {'rev': 'release'})
  " call dein#add('equalsraf/neovim-gui-shim')

  call dein#add('tpope/vim-sensible')
  call dein#add('tpope/vim-surround')
  " call dein#add('tpope/vim-fugitive')

  call dein#add('scrooloose/syntastic')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('t9md/vim-choosewin')
  call dein#add('weilbith/nerdtree_choosewin-plugin')

  " file searching
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

  " call dein#add('majutsushi/tagbar')
  call dein#add('vim-airline/vim-airline')

  call dein#add('justinmk/vim-sneak')

  call dein#add('airblade/vim-gitgutter')
  call dein#add('Lokaltog/vim-easymotion')

  " call dein#add('twerth/ir_black')
  call dein#add('sainnhe/gruvbox-material')
  " call dein#add('TechnoGate/janus-colors')

  call dein#add('chrisbra/NrrwRgn')
  call dein#add('skalnik/vim-vroom')

  " tag support
  " call dein#add('ludovicchabant/vim-gutentags')
  " call dein#add('sheerun/vim-polyglot')

  call dein#add('Chiel92/vim-autoformat')

  " Windows management
  call dein#add('simeji/winresizer')


  " call dein#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})

  " call dein#add('tmux-plugins/vim-tmux')
  " call dein#add('tmux-plugins/vim-tmux-focus-events')
  call dein#add('dracula/vim', { 'as': 'dracula' })

  call dein#add('ryanoasis/vim-devicons')

  call dein#end()
  call dein#save_state()
endif

