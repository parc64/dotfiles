set nocompatible
set encoding=utf-8
set ttyfast
set t_Co=256
set gcr=a:blinkon0              "Disable cursor blink

so ~/.vim/settings/plugins.vim

set smartindent
set autoindent
set ruler

set clipboard=unnamed

set autoread
set so=7 " lines to the cursor - when moving vertically using j/k

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" noremap <Space> <nop>
" let mapleader = "\<Space>"
let mapleader = "\\"

set nonumber
set nobackup
set nowb
set noswapfile

set nowrap
set tabstop=2
set shiftwidth=2
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

set pastetoggle=<F5>
set diffopt=vertical

let g:airline_powerline_fonts=1
let g:airline_detect_modified=1
let g:airline_inactive_collapse=0

let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1

so ~/.vim/settings/key_mappings.vim
so ~/.vim/settings/ctrp.vim
so ~/.vim/settings/easytags.vim
so ~/.vim/settings/neocomplete.vim
so ~/.vim/settings/tagbar.vim
so ~/.vim/settings/gitgutter.vim
so ~/.vim/settings/ctrlsf.vim

" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif

set wildmenu
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

" nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
" vnoremap <Space> zf

let g:buffergator_sort_regime="mru"
let g:buffergator_viewport_split_policy="T"
let g:buffergator_split_size="10"

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby
au BufRead,BufNewFile *.jbuilder setfiletype ruby
au BufRead,BufNewFile *.eco setfiletype html

if has('gui_running')
  if has('mac')
    set guifont=Fira\ Code:h12
  elseif has('unix')
    set guifont=Ubuntu\ Mono\ 12
  endif

  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
  set guioptions-=l
  set guioptions-=L
  " set showtabline=2
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

" Only show cursorline in the current window and in normal mode.
" augroup cline
"   au!
"   au WinLeave * set nocursorline
"   au WinEnter * set cursorline
"   au InsertEnter * set nocursorline
"   au InsertLeave * set cursorline
" augroup END

if has("gui_running")
  let g:solarized_visibility="low"    "default value is normal
  let g:solarized_hitrail=1    "default value is 0
  set background=dark
  " color ir_dark
  color gruvbox
  " color solarized
  hi clear SignColumn
  hi Search guifg=grey guibg=blue
else
  let g:hybrid_use_iTerm_colors = 1
  set background=dark
  color gruvbox
  hi clear SignColumn
  "hi TabLineFill ctermbg=8
  "hi TabLine ctermbg=8
  " hi SignColumn ctermbg=black
end

" Kills Trailing Whitespaces
command! KillWhitespace :normal :%s/ *$//g<cr><c-o><cr>

aug AutoloadVimrc
  au!
  au BufWritePost .vimrc source ~/.vimrc
aug END

