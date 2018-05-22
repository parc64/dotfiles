let g:fzf_nvim_statusline = 0 " disable statusline overwriting

nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>

nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>

nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>

nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>' :Marks<CR>

nnoremap <silent> <leader>a :execute 'Ag ' . input('Ag/')<CR>

nmap <Leader>H :Helptags!<CR>

nmap <Leader>C :Commands<CR>

nmap <Leader>: :History:<CR>
nmap <Leader>/ :History/<CR>

nmap <Leader>M :Maps<CR>
nmap <Leader>s :Filetypes<CR>


