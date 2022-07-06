let g:nvim_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 0,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }
let g:nvim_tree_git_hl = 0

nnoremap <leader>e :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

lua << EOF
require'nvim-tree'.setup {
  git = {
    enable = false,
    ignore = false,
    timeout = 400,
  },
  view = {
    width = 50
  }
}
EOF
