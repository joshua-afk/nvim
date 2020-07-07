" fzf-config
" nnoremap <silent> <c-p> :Files<cr>
nnoremap <silent> <c-p> :FloatermNew fzf<cr>
nnoremap <silent> <c-g> :GFiles<cr>
nnoremap <silent> <c-o> :Buffers<cr>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <leader>ag :Ag<cr>
