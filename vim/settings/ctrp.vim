" CtrlP

let g:ctrlp_use_caching = 0

if executable('pt')
  " Use Ag over Grep
  set grepprg=pt\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'pt %s -l --nocolor -g ""'
endif

let g:ctrlp_match_window='bottom,order:ttb,min:1,max:10,results:100'
let g:ctrlp_use_caching=1
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_user_command=['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
