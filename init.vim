" ===========================
"
" CONTENTS
" 
" = HOSTS
" = ABBBREVIATIONS
" = VIM-PLUG
" = OVERRIDES
" = MAPPINGS
" = PLUGINS-CONFIG
"
" ===========================

set nocompatible
set t_Co=256
set termguicolors
set encoding=UTF-8
syntax on
filetype plugin on

" #===== HOSTS =====#
let g:python_host_prog = "/usr/bin/python2.7"
let g:python3_host_prog = "/usr/bin/python3.8"

" #===== ABBREVIATIONS =====#
:ab artisan !php artisan

" #===== VIM-PLUG =====#
call plug#begin()
" Navigation
Plug 'terryma/vim-multiple-cursors'
Plug 'psliwka/vim-smoothie'
Plug 'breuckelen/vim-resize'
Plug 'unblevable/quick-scope'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'voldikss/vim-floaterm'

" Linters & Fixers
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'jwalton512/vim-blade'
Plug 'othree/html5.vim'

" LSP & Completions
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'SirVer/ultisnips'                 " Custom Completion
" Plug 'deoplete-plugins/deoplete-jedi'   " Python Completion
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } " Javascript Completion

" Themes
Plug 'hzchirs/vim-material'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'

" Layout
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'iamcco/markdown-preview.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'

" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Core
Plug 'editorconfig/editorconfig-vim'
Plug 'tkhren/vim-fake'
Plug 'tpope/vim-dispatch'
" Plug 'arnaud-lb/vim-php-namespace'
Plug 'easymotion/vim-easymotion'
Plug 'takac/vim-hardtime'

" Etc
Plug 'machakann/vim-sandwich'
Plug 'tommcdo/vim-lion'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-projectionist'
" Plug 'swekaj/php-foldexpr.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

call plug#end()

" #===== OVERRIDES =====#
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

" Save positions on quit
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview

set hidden                              " Hide current buffer when switching on another buffer
set nobackup                            " Don't create a backup when overriding a file set nowritebackup                       " You won't have a backup in emergencies `DO THIS ON YOUR OWN RISK`
set nowritebackup
set cmdheight=2                         " Number of screen lines to use for the command-line                      
set updatetime=300                      " Time waits after you stop typing
set shortmess+=c                        " Don't pass messages to ins-completion-menu.
set guifont=Consolas\ NF:h12:cANSI
set guioptions-=T                       " Removes top toolbar
set guioptions-=R                       " Removes right hand scroll bar
set go-=L                               " Removes left hand scroll bar
set number                              " Show number of each line
set relativenumber                      " Show the line number relative to the line with the cursor
set laststatus=2                        " Always have a status line
set linespace=4                         " Number of pixel lines inserted between characters
set signcolumn=yes                      " Remove the grey bar on left 
set showmode                            " Always show what mode we're currently editing in
set nohlsearch		 	                " No highlight after search
set nowrap                              " Don't wrap lines
set tabstop=4                           " A tab is two spaces
set shiftwidth=4                        " Number of spaces to use for autoindenting
set expandtab                           " Expand tabs by default (overloadable per file type later)
set smarttab                            " Better tabs
set tags=tags
set softtabstop=4                       " When hitting <BS>, pretend like a tab is removed, even if spaces
set shiftround                          " Use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start          " Allow backspacing over everything in insert mode
set autoindent                          " Always set autoindenting on
set copyindent                          " Copy the previous indentation on autoindenting
set ignorecase                          " Ignore case when searching
set smartcase                           " Ignore case if search pattern is all lowercase,
set visualbell           	            " Don't beep
set noerrorbells         	            " Don't beep
set splitbelow                          " Reverse splits top to bottom
set splitright                          " Reverse splits left to right
set showcmd                             " Show (partial) command in the status line
set background=dark
set viewoptions-=options
set mouse=a
setlocal foldmethod=manual              " Folds are created manually
set ttyfast
set lazyredraw

" #===== MAPPINGS =====#
" Remap <leader>
let mapleader = ","
let g:mapleader = ","

" Disable Ex Mode
map Q <nop>

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Up and Down wrapper reverse
nnoremap j gj
nnoremap k gk
nnoremap gk k
nnoremap gj j

" Quickly open vimrc
nnoremap <leader>vimrc :vsplit $MYVIMRC<CR>

" Fast saves & fast quit
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>

" Easy buffers
map <leader>n :bn<cr>
map <leader>b :bp<cr>

" Map move lines
nnoremap <a-j> :m .+1<cr>==
nnoremap <a-k> :m .-2<cr>==
inoremap <a-j> <esc>:m .+1<cr>==gi
inoremap <a-k> <esc>:m .-2<cr>==gi
vnoremap <a-j> :m '>+1<cr>gv=gv
vnoremap <a-k> :m '<-2<cr>gv=gv

" Copy to system clipboard
vnoremap <leader>y  "+y
nnoremap <leader>Y  "+yg_
nnoremap <leader>y  "+y

" Paste from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Hit <enter> to insert new line in normal mode
map <enter> o<esc>
map <s-enter> o<esc>

" Fast close HTMl tag
imap <leader>/ </<c-x><c-o>

" Faster open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Vertical resize for sidenav
nmap <leader>30 :vertical resize 30<cr>

" #===== PLUGINS-CONFIG =====#
" source $HOME/.config/nvim/plug-config/themes.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/rooter.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/commentary.vim
source $HOME/.config/nvim/plug-config/fugitive.vim
source $HOME/.config/nvim/plug-config/lion.vim
source $HOME/.config/nvim/plug-config/explorer.vim
" source $HOME/.config/nvim/plug-config/ultisnips.vim
" source $HOME/.config/nvim/plug-config/deoplete.vim
" source $HOME/.config/nvim/plug-config/emmet.vim
" source $HOME/.config/nvim/plug-config/ale.vim
" source $HOME/.config/nvim/plug-config/php-namespace.vim
source $HOME/.config/nvim/plug-config/blade.vim
source $HOME/.config/nvim/plug-config/easy-motion.vim
source $HOME/.config/nvim/plug-config/resize.vim

" #===== THEMES-CONFIG =====#
source $HOME/.config/nvim/themes-config/one.vim
" source $HOME/.config/nvim/themes-config/material.vim
" source $HOME/.config/nvim/themes-config/gruvbox.vim

" Startify config (Bookmarks)
let g:startify_bookmarks = [
    \ "/mnt/c/Users/joshua-afk/Documents/_parking/todo.md",
    \ "/mnt/z/python_sandbox/README.md",
    \ "/mnt/z/laragon/www/components/README.md",
    \ "/mnt/z/laragon/www/projects/README.md",
    \ "/mnt/z/laragon/www/construct-ph-improve/README.md",
    \ "/mnt/z/laragon/www/vue-beginner/index.html",
    \ "/mnt/z/laragon/www/tasklist/README.md",
    \ "/mnt/z/laragon/www/joshua-afk-v2/README.md",
    \ "/mnt/z/laragon/www/joshua-afk-v3/README.md",
    \ "/mnt/z/laragon/www/amazon-boost/manifest.json",
    \ "/mnt/z/laragon/www/flower-shop/dist/index.html",
    \ "/mnt/z/laragon/www/scrapy/README.md",
    \ "/mnt/z/laragon/www/novasolutions-sandbox/README.md",
    \ "/mnt/z/laragon/www/_python/pollster_project/README.md",
    \ "/mnt/z/python_sandbox/README.md",
    \ ]

" vim-hard-time
let g:hardtime_default_on = 0

" Custom file type behavior
autocmd Filetype html setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype blade setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype vue setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype js setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype css setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype scss setlocal ts=2 sw=2 expandtab foldmethod=manual
" autocmd Filetype php setlocal foldmethod=syntax

" Get nvim version
function! NvimVer()
    redir => s
    silent! version
    redir END
    return matchstr(s, 'NVIM v\zs[^\n]*')
endfunction
