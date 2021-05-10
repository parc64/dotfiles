set nocompatible
set encoding=utf-8
set ttyfast
set t_Co=256
set gcr=a:blinkon0              "Disable cursor blink

so ~/.config/nvim/plugins.vim

set smartindent
set autoindent
set ruler

set clipboard=unnamed

set autoread
set so=7 " lines to the cursor - when moving vertically using j/k

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" noremap <Space> <nop>
let mapleader = "\<Space>"
" let mapleader = "`"

set showtabline=2

set nonumber
set nobackup
set nowritebackup
set nowb
set noswapfile

set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

set list
set listchars=""
set listchars=tab:\ \
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<

set hlsearch
set incsearch
set ignorecase
set smartcase
set cursorline
set nofoldenable

filetype plugin indent on
au FileType swift setl sw=4 sts=4 et

" netrw config
let g:netrw_menu = 0
let g:netrw_banner = 0
let g:netrw_preview = 1
let g:netrw_liststyle = 'thin'
" let g:netrw_hide = 1
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+,\(^\|\s\s\)ntuser\.\S\+'
autocmd FileType netrw set nolist

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
set clipboard+=unnamedplus

noremap <F2> :Autoformat<CR>
set pastetoggle=<F5>
set diffopt=vertical

let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1

if has('termwinsize')
  set termwinsize=10x0
endif

so ~/.config/nvim/settings/nerdtree.vim
so ~/.config/nvim/settings/fzf.vim
so ~/.config/nvim/settings/key_mappings.vim
so ~/.config/nvim/settings/ctrp.vim
so ~/.config/nvim/settings/tagbar.vim
so ~/.config/nvim/settings/gitgutter.vim
" so ~/.config/nvim/settings/deoplete.vim
so ~/.config/nvim/settings/coc.vim
so ~/.config/nvim/settings/denite.vim
so ~/.config/nvim/settings/airline.vim
so ~/.config/nvim/settings/choosewin.vim

let g:gutentags_ctags_tagfile='.git/tags'

set wildmenu
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby
au BufRead,BufNewFile *.jbuilder setfiletype ruby
au BufRead,BufNewFile *.eco setfiletype html

if has('gui_running')
  if has('mac')
    "set guifont=Ubuntu\ Mono\ Nerd\ Font\ Regular:h19
  elseif has('unix')
    " set guifont=UbuntuMono\ Nerd\ Font\ Regular:h19
  endif

  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
  set guioptions-=l
  set guioptions-=L
  set showtabline=2
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
"MACVIM ./configure --with-features=huge --enable-multibyte --with-macarchs=x86_64 --enable-perlinterp --enable-rubyinterp --enable-tclinterp --enable-terminal --with-tlib=ncurses --with-compiledby=Homebrew --with-local-dir=/usr/local --enable-cscope --enable
"VIM ./configure --enable-rubyinterp --enable-pythoninterp --enable-multibyte --with-features=huge

" Only show cursorline in the current window and in normal mode.
" augroup cline
"   au!
"   au WinLeave * set nocursorline
"   au WinEnter * set cursorline
"   au InsertEnter * set nocursorline
"   au InsertLeave * set cursorline
" augroup END

set termguicolors
" set background=light
" color gruvbox-material
color dracula

let g:syntastic_quiet_messages = { "!level": "errors" }

" Kills Trailing Whitespaces
command! KillWhitespace :normal :%s/ *$//g<cr><c-o><cr>

aug AutoloadVimrc
  au!
  au BufWritePost init.vim source ~/.config/nvim/init.vim
aug END

