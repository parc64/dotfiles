" CtrlSF

let g:ctrlsf_default_view_mode='compact'
let g:ctrlsf_position='bottom'
let g:ctrlsf_winsize='30%'

nmap     <C-O>s <Plug>CtrlSFPrompt
vmap     <C-O>s <Plug>CtrlSFVwordPath
vmap     <C-O>F <Plug>CtrlSFVwordExec
nmap     <C-O>n <Plug>CtrlSFCwordPath
nmap     <C-o>p <Plug>CtrlSFPwordPath
nnoremap <C-O>o :CtrlSFOpen<CR>
nnoremap <C-O>t :CtrlSFToggle<CR>
inoremap <C-O>t <Esc>:CtrlSFToggle<CR>

