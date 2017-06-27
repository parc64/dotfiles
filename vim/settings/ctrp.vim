" CtrlP

let g:ctrlp_use_caching = 0

let g:ctrlp_user_command=['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_match_window='bottom,order:ttb,min:1,max:20,results:100'
let g:ctrlp_use_caching=1
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

nmap     <C-O>b :CtrlPBuffer<cr>
