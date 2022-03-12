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
Plug 'tpope/vim-sleuth/'

" Navigation
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'psliwka/vim-smoothie'
Plug 'breuckelen/vim-resize'
Plug 'unblevable/quick-scope'
Plug 'airblade/vim-rooter'
Plug 'kyazdani42/nvim-tree.lua'

" LSP, Completions & Snippets
" Plug 'nvim-lua/plenary.nvim'

" Themes
Plug 'morhetz/gruvbox'

" Layout
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'ryanoasis/vim-devicons'
" Plug 'kyazdani42/nvim-web-devicons'

" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" Etc
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
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
" source $HOME/.config/nvim/plugins-config/airline.vim

" #===== THEMES-CONFIG =====#
source $HOME/.config/nvim/plugins-config/gruvbox.vim

" Startify config (Bookmarks)
let g:startify_bookmarks = [
    \ "/mnt/d/MiniHr/notes.md",
    \ "/mnt/d/WebJPS/notes.md",
    \ "/mnt/d/sanbox/README.md",
    \ ]
