call pathogen#infect()

set nocompatible
syntax on
filetype plugin indent on

set encoding=utf-8
set showcmd
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start
set visualbell t_vb=

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

let g:Powerline_symbols = 'fancy'

let g:tagbar_autoclose = 0
let g:tagbar_compact = 1
let g:tagbar_foldlevel = 2
let g:tagbar_autoshowtag = 1

let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1

set wildmenu
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

noremap  <F1> :NERDTreeFind<CR>
inoremap <F1> <esc>:NERDTreeFind<CR>

noremap  <F2> :NERDTreeToggle<CR>
inoremap <F2> <esc>:NERDTreeToggle<CR>

nnoremap <silent> <F3> :TagbarToggle<CR>

nnoremap <F6> :set nonumber!<CR>

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups
set noswapfile                    " It's 2012, Vim.

let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
"let NERDTreeWinPos="right"

if has('gui_running')
  set guifont=Ubuntu\ Mono\ for\ Powerline\ 12

  set guioptions-=M
  set guioptions-=T
  set guioptions-=r
  set guioptions-=l
  set guioptions-=L

  if has("gui_macvim")
    set fuoptions=maxvert,maxhorz
    set showtabline=2
  else
    " non macvim gui
  end
else
    " Console Vim
    " For me, this means iTerm2, possibly through tmux

    " Mouse support
    set mouse=a

    " These sequences tell iTerm2 to change the cursor shape to a bar or block.
    let cursor_to_bar   = "\<Esc>]50;CursorShape=1\x7"
    let cursor_to_block = "\<Esc>]50;CursorShape=0\x7"

    if exists('$TMUX')
        let tmux_start = "\<Esc>Ptmux;"
        let tmux_end   = "\<Esc>\\"

        let cursor_to_bar   = tmux_start . "\<Esc>" . cursor_to_bar   . tmux_end
        let cursor_to_block = tmux_start . "\<Esc>" . cursor_to_block . tmux_end
    endif

    " When entering insert mode, change the cursor to a bar.
    " When exiting insert mode, change it back to a block.
    let &t_SI = cursor_to_bar
    let &t_EI = cursor_to_block
endif

color ir_dark
