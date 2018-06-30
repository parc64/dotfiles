
vmap <Tab> >gv
vmap <S-Tab> <gv

nnoremap <silent><leader>w :NERDTreeToggle<CR>
nnoremap <silent> <F3> :TagbarToggle<CR>
nnoremap <F6> :set nonumber!<CR>

" Fast window resizing with +/- keys (horizontal); / and * keys (vertical)
if bufwinnr(1)
  nnoremap <silent> + :exe "resize +5"<CR>
  nnoremap <silent> _ :exe "resize -5"<CR>
  nnoremap <silent> < :exe "vertical resize -5"<CR>
  nnoremap <silent> > :exe "vertical resize +5"<CR>
endif

noremap <silent>- :edit .<CR>
