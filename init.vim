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
Plug 'sunjon/shade.nvim'
Plug 'zegervdv/nrpattern.nvim'
Plug 'arthurxavierx/vim-caser'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'

" Navigation
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'psliwka/vim-smoothie'
Plug 'breuckelen/vim-resize'
Plug 'unblevable/quick-scope'
Plug 'airblade/vim-rooter'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'mvllow/modes.nvim'

" LSP
" Plug 'neovim/nvim-lspconfig'

" Snippets
" Plug 'L3MON4D3/LuaSnip'
" Plug 'rafamadriz/friendly-snippets'

" Auto Completion
" Plug 'saadparwaiz1/cmp_luasnip'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
" Plug 'hrsh7th/nvim-cmp'

" Linters
Plug 'digitaltoad/vim-pug'
Plug 'jwalton512/vim-blade'
Plug 'pangloss/vim-javascript'
Plug 'statico/vim-javascript-sql'
Plug 'vim-ruby/vim-ruby'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

" Themes
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
" Plug 'morhetz/gruvbox'
" Plug 'sainnhe/everforest'
" Plug 'pineapplegiant/spaceduck'

" Layout
Plug 'nvim-lualine/lualine.nvim'
Plug 'mhinz/vim-startify'
Plug 'kyazdani42/nvim-web-devicons'

" Git
Plug 'tpope/vim-fugitive'

" Etc
Plug 'tpope/vim-surround'
Plug 'tommcdo/vim-lion'
Plug 'numToStr/Comment.nvim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" #===== SETTINGS =====#
source $HOME/.config/nvim/settings.vim

" #===== MAPPINGS =====#
source $HOME/.config/nvim/maps.vim

" #===== AUTOCOMMANDS =====#
source $HOME/.config/nvim/auto-commands.vim

" #===== BOOKMARKS =====#
source $HOME/.config/nvim/bookmarks.vim

"#===== PLUGINS-CONFIG =====#
source $HOME/.config/nvim/plugins-config/lion.vim
source $HOME/.config/nvim/plugins-config/vim-rooter.vim
source $HOME/.config/nvim/plugins-config/nvim-tree.vim
source $HOME/.config/nvim/plugins-config/fzf.vim
source $HOME/.config/nvim/plugins-config/shade.vim
source $HOME/.config/nvim/plugins-config/vim-markdown.vim
" source $HOME/.config/nvim/plugins-config/gruvbox.vim
" source $HOME/.config/nvim/plugins-config/airline.vim

"#===== PLUGINS-CONFIG-LUA =====#
source $HOME/.config/nvim/plugins-config/lua/comment.vim
source $HOME/.config/nvim/plugins-config/lua/treesitter.vim
source $HOME/.config/nvim/plugins-config/lua/nrpattern.vim
source $HOME/.config/nvim/plugins-config/lua/lualine.vim
source $HOME/.config/nvim/plugins-config/lua/modes.vim
" source $HOME/.config/nvim/plugins-config/lua/lightspeed.vim
" source $HOME/.config/nvim/plugins-config/lua/cmp.vim
" source $HOME/.config/nvim/plugins-config/lua/luasnip.vim
" source $HOME/.config/nvim/plugins-config/lua/lsp.vim

" #===== THEMES-CONFIG =====#
source $HOME/.config/nvim/plugins-config/lua/catppuccin.vim
" source $HOME/.config/nvim/plugins-config/everforest.vim
" source $HOME/.config/nvim/plugins-config/gruvbox.vim


