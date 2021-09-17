
" # CONTENTS
"
" = ABBBREVIATIONS
" = VIM-PLUG
" = SETTINGS
" = MAPPINGS
" = PLUGINS-CONFIG
"
" ===========================

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

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
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Linters & Fixers
Plug 'jwalton512/vim-blade'
Plug 'Yggdroot/indentLine'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" LSP, Completions & Snippets
Plug 'vim-scripts/loremipsum'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neovim/nvim-lspconfig'
" Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}

" Themes
Plug 'rakr/vim-one'
Plug 'NLKNguyen/papercolor-theme'

" Layout
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" Core
Plug 'editorconfig/editorconfig-vim'
Plug 'tkhren/vim-fake'
Plug 'tpope/vim-dispatch'
Plug 'joshua-afk/vim-px-to-em'

" Etc
Plug 'machakann/vim-sandwich'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
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
source $HOME/.config/nvim/plugins-config/chadtree.vim
source $HOME/.config/nvim/plugins-config/lion.vim
source $HOME/.config/nvim/plugins-config/lsp-config.vim
source $HOME/.config/nvim/plugins-config/ultisnips.vim
source $HOME/.config/nvim/plugins-config/airline.vim
source $HOME/.config/nvim/plugins-config/commentary.vim

" #===== THEMES-CONFIG =====#
" source $HOME/.config/nvim/plugins-config/one.vim
source $HOME/.config/nvim/plugins-config/papercolor.vim

" Startify config (Bookmarks)
let g:startify_bookmarks = [
    \ "/mnt/c/laragon/www/joshua-afk-blog",
    \ "/mnt/c/Users/Kazuyuki/projects/joshua-afk-v3/README.md",
    \ "/mnt/c/laragon/www/sandbox-php/vanilla.php",
    \ "/mnt/c/sandbox-ruby/myapp/README.md",
    \ "/mnt/c/sandbox-ruby/play/test.rb",
    \ ]

