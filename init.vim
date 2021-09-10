
" # CONTENTS
"
" = ABBBREVIATIONS
" = VIM-PLUG
" = SETTINGS
" = MAPPINGS
" = PLUGINS-CONFIG
"
" ===========================

" #===== NVR =====#
if has('nvim')
  let $GIT_EDITOR = 'nvr -cc split --remote-wait'
endif

autocmd FileType gitcommit,gitrebase,gitconfig set bufhidden=delete

" #===== ABBREVIATIONS =====#
:ab reload so $MYVIMRC

" #===== VIM-PLUG =====#
call plug#begin()
" Navigation
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'psliwka/vim-smoothie'
Plug 'breuckelen/vim-resize'
Plug 'unblevable/quick-scope'
Plug 'airblade/vim-rooter'
Plug 'kyazdani42/nvim-tree.lua'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Linters & Fixers
Plug 'jwalton512/vim-blade'

" LSP, Completions & Snippets
Plug 'vim-scripts/loremipsum'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" Themes
Plug 'rakr/vim-one'

" Layout
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'

" Git
Plug 'mhinz/vim-signify'


" Core
Plug 'editorconfig/editorconfig-vim'
Plug 'tkhren/vim-fake'
Plug 'tpope/vim-dispatch'
Plug 'easymotion/vim-easymotion'
Plug 'joshua-afk/vim-px-to-em'

" Etc
Plug 'machakann/vim-sandwich'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
call plug#end()

" #===== LUA =====#
lua require('init')

" #===== SETTINGS =====#
source $HOME/.config/nvim/settings.vim

" #===== MAPPINGS =====#
source $HOME/.config/nvim/maps.vim

" #===== PLUGINS-CONFIG =====#
source $HOME/.config/nvim/plugins-config/telescope.vim
source $HOME/.config/nvim/plugins-config/nvim-tree.vim
source $HOME/.config/nvim/plugins-config/lion.vim
source $HOME/.config/nvim/plugins-config/lsp-config.vim
source $HOME/.config/nvim/plugins-config/ultisnips.vim
" source $HOME/.config/nvim/plug-config/signify.vim
" source $HOME/.config/nvim/plug-config/airline.vim
" source $HOME/.config/nvim/plug-config/rooter.vim
" source $HOME/.config/nvim/plug-config/commentary.vim
" source $HOME/.config/nvim/plug-config/fugitive.vim
" source $HOME/.config/nvim/plug-config/explorer.vim
" source $HOME/.config/nvim/plug-config/deoplete.vim
" source $HOME/.config/nvim/plug-config/ale.vim
" source $HOME/.config/nvim/plug-config/php-namespace.vim
" source $HOME/.config/nvim/plug-config/blade.vim
" source $HOME/.config/nvim/plug-config/easy-motion.vim
" source $HOME/.config/nvim/plug-config/resize.vim

" #===== THEMES-CONFIG =====#
source $HOME/.config/nvim/plugins-config/one.vim

" Startify config (Bookmarks)
let g:startify_bookmarks = [
    \ "$HOME/.config/nvim/init.vim",
    \ "/mnt/c/Users/Kazuyuki/projects/joshua-afk-v3/README.md",
    \ "/mnt/c/laragon/www/sandbox-php/vanilla.php",
    \ "/mnt/c/sandbox-ruby/myapp/README.md",
    \ "/mnt/c/sandbox-ruby/play/test.rb",
    \ ]

" Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Custom file type behavior
autocmd Filetype html setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype blade setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype vue setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype js setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype css setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype scss setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype php setlocal foldmethod=syntax

highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight Normal guibg=none
highlight NonText guibg=none
