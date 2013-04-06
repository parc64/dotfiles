set nocompatible
set encoding=utf-8
filetype off

" Vundle!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'mileszs/ack.vim'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'majutsushi/tagbar'

Bundle 'ZoomWin'
Bundle 'Colour-Sampler-Pack'

set t_Co=256

set autoread

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set nobackup
set nowb
set noswapfile

set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
" set backspace=indent,eol,start
set listchars+=trail:.

set hlsearch
set incsearch
set ignorecase
set smartcase

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

let g:tagbar_autoclose = 0
let g:tagbar_foldlevel = 2
let g:tagbar_compact = 1
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

nnoremap <silent> <F8> :TlistToggle<CR>

noremap  <F1> :NERDTreeFind<CR>
inoremap <F1> <esc>:NERDTreeFind<CR>

noremap  <F2> :NERDTreeToggle<CR>
inoremap <F2> <esc>:NERDTreeToggle<CR>

nnoremap <silent> <F3> :TagbarToggle<CR>

nnoremap <F6> :set nonumber!<CR>

let Tlist_Process_File_Always=1
let Tlist_Use_Right_Window=1
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let TList_Exit_OnlyWindow=1

let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeChristmasTree=1
let NERDTreeAutoCenter=1
" let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
"let NERDTreeWinPos="right"

let g:buffergator_sort_regime="mru"
let g:buffergator_viewport_split_policy="T"
let g:buffergator_split_size="10"

au BufRead,BufNewFile *.jsonify setfiletype ruby

if has('gui_running')
  if has('mac')
    " set guifont=Droid\ Sans\ Mono:h16
    " set guifont=Menlo:h18
    set guifont=LetterGothicMonoOT:h18
  elseif has('unix')
    set guifont=Droid\ Sans\ Mono\ 12
  endif

  set guioptions-=M
  set guioptions-=T
  set guioptions-=r
  set guioptions-=l
  set guioptions-=L
else
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

" compile vim from source on OSX to get this feature, use system ruby
" ./configure --enable-rubyinterp --enable-pythoninterp --enable-multibyte --with-features=huge
" set clipboard=unnamed

set nonumber

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Only show cursorline in the current window and in normal mode.
augroup cline
  au!
  au WinLeave * set nocursorline
  au WinEnter * set cursorline
  au InsertEnter * set nocursorline
  au InsertLeave * set cursorline
augroup END

" call togglebg#map("<F12>")

set background=dark

if has("gui_running")
  color wombat256
else
  color wombat256mod
end
