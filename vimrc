set nocompatible
set encoding=utf-8
set termguicolors
set ttyfast
set t_Co=256
set gcr=a:blinkon0              "Disable cursor blink

so ~/.vim/settings/plugins.vim

set smartindent
set autoindent
set ruler

set autoread
" set completeopt=longest,menuone

set so=7 " lines to the cursor - when moving vertically using j/k

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" noremap <Space> <nop>
" let mapleader = "\<Space>"
let mapleader = "\\"

noremap <Leader>ff :.,$!rubocop --auto-correct<CR>

noremap <Leader>sc :SlimuxShellConfig<CR>
noremap <Leader>sp :SlimuxShellPrompt<CR>
noremap <Leader>sr :SlimuxShellRun<CR>

:nmap <silent> <leader>d <Plug>DashSearch

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

" Fast window resizing with +/- keys (horizontal); / and * keys (vertical)
" if bufwinnr(1)
"  nnoremap <silent> = :exe "resize +5"<CR>
"  nnoremap <silent> - :exe "resize -5"<CR>
"  nnoremap <silent> < :exe "vertical resize -5"<CR>
"  nnoremap <silent> > :exe "vertical resize +5"<CR>
"endif

set pastetoggle=<F5>

if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r
  set statusline+=Line:%l/%L[%p%%]
  set statusline+=Col:%v
  set statusline+=Buf:#%n
  set statusline+=[%b][0x%B]
endif

" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}

let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
let g:ackhighlight=1
let g:ack_use_dispatch=1

let g:indentLine_char = '┊'
let g:indentLine_color_term=235
let g:indentLine_color_gui='#2e2e2e'
let g:indentLine_noConcealCursor=1

let g:airline_powerline_fonts=0
let g:airline_detect_modified=1
let g:airline_inactive_collapse=0

set diffopt=vertical

" let g:netrw_liststyle=4
" let g:netrw_browse_split=4
" let g:netrw_preview=1
" let g:netrw_winsize=10

so ~/.vim/settings/ctrp.vim
so ~/.vim/settings/easytags.vim
so ~/.vim/settings/neocomplete.vim
so ~/.vim/settings/tagbar.vim

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

au FileType xml exe ":silent %!xmllint --format --recover - 2>/dev/null"
au FileType xsd exe ":silent %!xmllint --format --recover - 2>/dev/null"

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1

" Status line configuration
set statusline+=%#warningmsg#  " Add Error ruler.
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
nnoremap <silent> ` :Errors<CR>

set wildmenu
set wildmode=list:longest

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

nnoremap <silent> <F3> :TagbarToggle<CR>

nnoremap <F6> :set nonumber!<CR>

let g:ctrlsf_default_view_mode='compact'
let g:ctrlsf_position='bottom'
let g:ctrlsf_winsize='30%'

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>


noremap  <F4> :VimShellTab<CR>
inoremap <F4> <esc>:VimShellTab<CR>

"augroup vimrc
"  au BufReadPre * setlocal foldmethod=indent
"  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

let g:buffergator_sort_regime="mru"
let g:buffergator_viewport_split_policy="T"
let g:buffergator_split_size="10"

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby
au BufRead,BufNewFile *.jbuilder setfiletype ruby

if has('gui_running')
  if has('mac')
    set guifont=Fira\ Code:h19
  elseif has('unix')
    set guifont=Ubuntu\ Mono\ 18
  endif

  "set guioptions-=m
  "set guioptions-=T
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
" ./configure --enable-rubyinterp --enable-pythoninterp --enable-multibyte --with-features=huge
set clipboard=unnamed

" Only show cursorline in the current window and in normal mode.
augroup cline
  au!
  au WinLeave * set nocursorline
  au WinEnter * set cursorline
  au InsertEnter * set nocursorline
  au InsertLeave * set cursorline
augroup END

if has("gui_running")
  let g:solarized_contrast="high"    "default value is normal
  let g:solarized_diffmode="low"    "default value is normal
  let g:solarized_hitrail=1    "default value is 0
  set background=dark
  color ir_dark
  hi Search guifg=grey guibg=blue

  let g:gitgutter_override_sign_column_highlight = 0
  hi clear SignColumn
  hi GitGutterAdd guifg=green
  hi GitGutterChange guifg=yellow
  hi GitGutterDelete guifg=red
  hi GitGutterChangeDelete guifg=orange
else
  let g:hybrid_use_iTerm_colors = 1
  set background=dark
  color ir_dark
  let g:gitgutter_override_sign_column_highlight = 0
  hi clear SignColumn
  hi GitGutterAdd guifg=green
  hi GitGutterChange guifg=yellow
  hi GitGutterDelete guifg=red
  hi GitGutterChangeDelete guifg=orange
  "hi TabLineFill ctermbg=8
  "hi TabLine ctermbg=8
  "hi SignColumn ctermbg=black
end

if has("gui_macvim") && has("gui_running")
  " Map command-[ and command-] to indenting or outdenting
  " while keeping the original selection in visual mode
  vmap <D-]> >gv
  vmap <D-[> <gv

  nmap <D-]> >>
  nmap <D-[> <<

  omap <D-]> >>
  omap <D-[> <<

  imap <D-]> <Esc>>>i
  imap <D-[> <Esc><<i

  " Bubble single lines
  nmap <D-Up> [e
  nmap <D-Down> ]e
  nmap <D-k> [e
  nmap <D-j> ]e

  " Bubble multiple lines
  vmap <D-Up> [egv
  vmap <D-Down> ]egv
  vmap <D-k> [egv
  vmap <D-j> ]egv

  " Map Command-# to switch tabs
  map  <D-0> 0gt
  imap <D-0> <Esc>0gt
  map  <D-1> 1gt
  imap <D-1> <Esc>1gt
  map  <D-2> 2gt
  imap <D-2> <Esc>2gt
  map  <D-3> 3gt
  imap <D-3> <Esc>3gt
  map  <D-4> 4gt
  imap <D-4> <Esc>4gt
  map  <D-5> 5gt
  imap <D-5> <Esc>5gt
  map  <D-6> 6gt
  imap <D-6> <Esc>6gt
  map  <D-7> 7gt
  imap <D-7> <Esc>7gt
  map  <D-8> 8gt
  imap <D-8> <Esc>8gt
  map  <D-9> 9gt
  imap <D-9> <Esc>9gt
else
  " Map command-[ and command-] to indenting or outdenting
  " while keeping the original selection in visual mode
  vmap <A-]> >gv
  vmap <A-[> <gv

  nmap <A-]> >>
  nmap <A-[> <<

  omap <A-]> >>
  omap <A-[> <<

  imap <A-]> <Esc>>>i
  imap <A-[> <Esc><<i

  " Bubble single lines
  nmap <C-Up> [e
  nmap <C-Down> ]e
  nmap <C-k> [e
  nmap <C-j> ]e

  " Bubble multiple lines
  vmap <C-Up> [egv
  vmap <C-Down> ]egv
  vmap <C-k> [egv
  vmap <C-j> ]egv

  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>

  " Map Control-# to switch tabs
  map  <C-0> 0gt
  imap <C-0> <Esc>0gt
  map  <C-1> 1gt
  imap <C-1> <Esc>1gt
  map  <C-2> 2gt
  imap <C-2> <Esc>2gt
  map  <C-3> 3gt
  imap <C-3> <Esc>3gt
  map  <C-4> 4gt
  imap <C-4> <Esc>4gt
  map  <C-5> 5gt
  imap <C-5> <Esc>5gt
  map  <C-6> 6gt
  imap <C-6> <Esc>6gt
  map  <C-7> 7gt
  imap <C-7> <Esc>7gt
  map  <C-8> 8gt
  imap <C-8> <Esc>8gt
  map  <C-9> 9gt
  imap <C-9> <Esc>9gt
endif

""
"" Command-Line Mappings
""

" Kills Trailing Whitespaces
command! KillWhitespace :normal :%s/ *$//g<cr><c-o><cr>

set showtabline=1
" set up tab labels with tab number, buffer name, number of windows
function! GuiTabLabel()
  let label = ''
  let bufnrlist = tabpagebuflist(v:lnum)
  " Add '+' if one of the buffers in the tab page is modified
  for bufnr in bufnrlist
    if getbufvar(bufnr, "&modified")
      let label = '+'
      break
    endif
  endfor
  " Append the tab number
  let label .= v:lnum.': '
  " Append the buffer name
  let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
  if name == ''
    " give a name to no-name documents
    if &buftype=='quickfix'
      let name = '[Quickfix List]'
    else
      let name = '[No Name]'
    endif
  else
    " get only the file name
    let name = fnamemodify(name,":t")
  endif
  let label .= name
  " Append the number of windows in the tab page
  let wincount = tabpagewinnr(v:lnum, '$')
  return label . '  [' . wincount . ']'
endfunction
set guitablabel=%{GuiTabLabel()}

" set up tab tooltips with every buffer name
function! GuiTabToolTip()
  let tip = ''
  let bufnrlist = tabpagebuflist(v:lnum)
  for bufnr in bufnrlist
    " separate buffer entries
    if tip!=''
      let tip .= " \n "
    endif
    " Add name of buffer
    let name=bufname(bufnr)
    if name == ''
      " give a name to no name documents
      if getbufvar(bufnr,'&buftype')=='quickfix'
        let name = '[Quickfix List]'
      else
        let name = '[No Name]'
      endif
    endif
    let tip.=name
    " add modified/modifiable flags
    if getbufvar(bufnr, "&modified")
      let tip .= ' [+]'
    endif
    if getbufvar(bufnr, "&modifiable")==0
      let tip .= ' [-]'
    endif
  endfor
  return tip
endfunction
set guitabtooltip=%{GuiTabToolTip()}

aug AutoloadVimrc
  au!
  au BufWritePost .vimrc source ~/.vimrc
aug END

" makes ctrlp much faster
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ } 
endif

