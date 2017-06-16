" easytags
let g:easytags_cmd='/usr/local/bin/ctags'
let g:easytags_opt=['--fields=+l --exclude=./vendor --exclude=./public']
set tags=./.tags;
let g:easytags_dynamic_files=1
let g:easytags_async=1
let g:easytags_auto_highlight=1
autocmd FileType ruby let b:easytags_auto_highlight = 0
