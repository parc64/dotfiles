call pathogen#infect()

syntax on
filetype plugin indent on

set clipboard=unnamed,unnamedplus,autoselect
set t_Co=256
set wrap
set linebreak
set nolist
set number
set modelines=0
set splitbelow
set splitright
set notimeout
set ttimeout
set ttimeoutlen=10
set encoding=utf-8
set noeb vb t_vb=
set termencoding=utf-8
set incsearch
set hlsearch

set wildmenu
set wildmode=list:longest,full
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

au GUIEnter * set vb t_vb=

if has("autocmd")
	" In Makefiles, use real tabs, not tabs expanded to spaces
	au FileType make setlocal noexpandtab

	" Treat JSON files like JavaScript
	au BufNewFile,BufRead *.json set ft=javascript

	" make Python follow PEP8 for whitespace ( http://www.python.org/dev/peps/pep-0008/ )
	au FileType python setlocal softtabstop=4 tabstop=4 shiftwidth=4

	" Remember last location in file, but not for commit messages.
	" see :help last-position-jump
	au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
				\| exe "normal! g`\"" | endif
endif

cmap w!! %!sudo tee > /dev/null %
nmap <leader>fef ggVG=
" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>
" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>
" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>
" Adjust viewports to the same size
map <Leader>= <C-w>=

au BufNewFile,BufRead *.jsonify set filetype=ruby

"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

" Better Completion
set completeopt=longest,menuone,preview

let g:Powerline_symbols = 'fancy'

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups
set noswapfile                    " It's 2012, Vim.

let g:buffergator_viewport_split_policy = "T"
let g:buffergator_split_size = 8

let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1

noremap  <F1> :NERDTreeFind<cr>
inoremap <F1> <esc>:NERDTreeFind<cr>

noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2

:map <F3> :TagbarToggle <CR>

nnoremap <F6> :set nonumber!<CR>

set tags=~/github/ruby/tags,~/github/rails/tags

" Only show cursorline in the current window and in normal mode.
augroup cline
	au! 
	au WinLeave * set nocursorline
	au WinEnter * set cursorline
	au InsertEnter * set nocursorline
	au InsertLeave * set cursorline
augroup END 


if has('gui_running')
	set guifont=LetterGothicMonoOT-Light\ for\ Powerline:h17

	set guioptions-=M
	set guioptions-=T
	set guioptions-=r
	set guioptions-=l
	set guioptions-=L

	if has("gui_macvim")
		set fuoptions=maxvert,maxhorz
	else
		" non macvim gui
	end
else
	" Mouse support
	set mouse=a

	" These sequences tell iTerm2 to change the cursor shape to a bar or block.
	let cursor_to_bar   = "\<Esc>]50;CursorShape=1\x7"
	let cursor_to_block = "\<Esc>]50;CursorShape=0\x7"

	if exists('$TMUX')
		" Some escape sequences (not all, lol) need to be properly escaped to
		" get them through tmux without being eaten.
		"
		" To escape a sequence through tmux:
		"
		" * Wrap it in these sequences.
		" * Any <Esc> characters inside it must be doubled.
		let tmux_start = "\<Esc>Ptmux;"
		let tmux_end   = "\<Esc>\\"

		"        let enable_focus_reporting  = tmux_start . "\<Esc>" . enable_focus_reporting  . tmux_end
		"        let disable_focus_reporting = tmux_start . "\<Esc>" . disable_focus_reporting . tmux_end

		let cursor_to_bar   = tmux_start . "\<Esc>" . cursor_to_bar   . tmux_end
		let cursor_to_block = tmux_start . "\<Esc>" . cursor_to_block . tmux_end
	endif

	let &t_SI = cursor_to_bar                                                              
	let &t_EI = cursor_to_block

	color jellybeans+
endif
