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
"Core
" Plug 'tpope/vim-sleuth/'
Plug 'sunjon/shade.nvim'
Plug 'zegervdv/nrpattern.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Navigation
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'psliwka/vim-smoothie'
Plug 'breuckelen/vim-resize'
Plug 'unblevable/quick-scope'
Plug 'ggandor/lightspeed.nvim'
Plug 'airblade/vim-rooter'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-telescope/telescope.nvim'

" LSP, Completions & Snippets
Plug 'nvim-lua/plenary.nvim'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}

" Linters & Fixers
Plug 'digitaltoad/vim-pug'

" Themes
" Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'

" Layout
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'kyazdani42/nvim-web-devicons'

" Git
" Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" Etc
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" #===== SETTINGS =====#
source $HOME/.config/nvim/settings.vim

" #===== MAPPINGS =====#
source $HOME/.config/nvim/maps.vim

"#===== PLUGINS-CONFIG =====#
source $HOME/.config/nvim/plugins-config/lion.vim
source $HOME/.config/nvim/plugins-config/nvim-tree.vim
source $HOME/.config/nvim/plugins-config/commentary.vim
source $HOME/.config/nvim/plugins-config/fzf.vim
" source $HOME/.config/nvim/plugins-config/gruvbox.vim
source $HOME/.config/nvim/plugins-config/airline.vim
source $HOME/.config/nvim/plugins-config/vim-rooter.vim
source $HOME/.config/nvim/plugins-config/coq.vim

"#===== PLUGINS-CONFIG-LUA =====#
source $HOME/.config/nvim/plugins-config/lua/lightspeed.vim

" #===== THEMES-CONFIG =====#
source $HOME/.config/nvim/plugins-config/everforest.vim
" source $HOME/.config/nvim/plugins-config/gruvbox.vim

" #===== STARTIFY =====#
let g:startify_bookmarks = [
    \ "/mnt/d/ClientCustomizations/Panelco/Modules/PPH/notes.md",
    \ "/mnt/d/ClientCustomizations/Panelco/Modules/PPH_node/notes.md",
    \ "/mnt/d/ClientCustomizations/RJ Globus/Modules/PPH/notes.md",
    \ "/mnt/d/ClientCustomizations/RJ Globus/Modules/PPH_node/notes.md",
    \ "/mnt/d/pph_node/notes.md",
    \ "/mnt/d/MiniHr/.gitignore",
    \ "/mnt/d/WebJPS/notes.md",
    \ "/mnt/d/sanbox/README.md",
    \ ]

lua << EOF
require'lightspeed'.setup {}
EOF
