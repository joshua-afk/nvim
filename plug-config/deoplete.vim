" deoplete config
 let g:deoplete#enable_at_startup = 1
 inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
 inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<Down>"
 inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<Up>"
 inoremap <expr><C-l> pumvisible() ? "\<C-y>" : "\<C-l>"

 " deoplete-ternjs-config
let g:deoplete#sources#ternjs#filetypes = [
            \ 'jsx',
            \ 'javascript.jsx',
            \ 'vue',
            \ '...'
            \ ]
