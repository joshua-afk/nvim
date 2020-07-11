" Vim PHP Namespace config
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <leader>u <esc>:call IPhpInsertUse()<cr>
autocmd FileType php noremap <leader>u :call PhpInsertUse()<cr>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <leader>e <esc>:call IPhpExpandClass()<cr>
autocmd FileType php noremap <leader>e :call PhpExpandClass()<cr>
let g:php_namespace_sort_after_insert = 1

