" Path completion with custom source command
" inoremap <expr> <leader>ff fzf#vim#complete#path('fd')
" inoremap <expr> <leader>ff fzf#vim#complete#path('rg --files')
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('fd')
inoremap <expr> <c-x><c-f> fzf#vim#complete#path('rg --files')

nnoremap <leader>ff <cmd>Files<cr>
nnoremap <leader>fb <cmd>Buffers<cr>
