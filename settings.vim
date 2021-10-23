syntax on
filetype plugin on
autocmd FileType netrw setl bufhidden=delete
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview

set nocompatible
set t_Co=256
set termguicolors
set encoding=UTF-8
set hidden                              " Hide current buffer when switching on another buffer
set cmdheight=1                         " Number of screen lines to use for the command-line                      
set updatetime=300                      " Time waits after you stop typing
set shortmess+=c                        " Don't pass messages to ins-completion-menu.
set guifont=Consolas\ NF:h12:cANSI
set guioptions-=T                       " Removes top toolbar
set guioptions-=R                       " Removes right hand scroll bar
set go-=L                               " Removes left hand scroll bar
set scrolloff=10
set number                              " Show number of each line
set relativenumber                      " Show the line number relative to the line with the cursor
set laststatus=2                        " Always have a status line
set linespace=4                         " Number of pixel lines inserted between characters
set signcolumn=yes                      " Remove the grey bar on left 
set showmode                            " Always show what mode we're currently editing in
set nohlsearch                          " No highlight after search
set nowrap                              " Don't wrap lines
set tags=tags
set shiftround                          " Use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start          " Allow backspacing over everything in insert mode
set autoindent                          " Always set autoindenting on
set copyindent                          " Copy the previous indentation on autoindenting
set ignorecase                          " Ignore case when searching
set smartcase                           " Ignore case if search pattern is all lowercase,
set visualbell                          " Don't beep
set noerrorbells                        " Don't beep
set splitbelow                          " Reverse splits top to bottom
set splitright                          " Reverse splits left to right
set showcmd                             " Show (partial) command in the status line
set background=dark
set viewoptions-=options
set mouse=a
setlocal foldmethod=manual              " Folds are created manually
set ttyfast
set lazyredraw
set noswapfile
set nobackup                            " Don't create a backup when overriding a file set nowritebackup
set nowritebackup
set undodir=~/.config/nvim/undodir
set undofile
set clipboard=unnamedplus
set completeopt=menu

" Tab
set tabstop=2                           " A tab is two spaces
set softtabstop=2                       " A tab is two spaces
set shiftwidth=2                        " Number of spaces to use for autoindenting
set expandtab                           " Expand tabs by default (overloadable per file type later)
set smarttab                            " Better tabs
