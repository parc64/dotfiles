
vmap <Tab> >gv
vmap <S-Tab> <gv

noremap  <C-S>s :e ~/dotfiles/vimrc<CR>

noremap  <F4> :VimShellTab<CR>
inoremap <F4> <esc>:VimShellTab<CR>

nnoremap <silent> <F3> :TagbarToggle<CR>
nnoremap <F6> :set nonumber!<CR>

" Fast window resizing with +/- keys (horizontal); / and * keys (vertical)
if bufwinnr(1)
  nnoremap <silent> + :exe "resize +5"<CR>
  nnoremap <silent> _ :exe "resize -5"<CR>
  nnoremap <silent> < :exe "vertical resize -5"<CR>
  nnoremap <silent> > :exe "vertical resize +5"<CR>
endif

" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z

noremap <silent>- :edit .<CR>
