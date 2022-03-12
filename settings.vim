" syntax on
" filetype plugin on
autocmd FileType netrw setl bufhidden=delete
" let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview

" set nocompatible
" set t_Co=256
" set termguicolors
" set encoding=UTF-8
set hidden                              " Hide current buffer when switching on another buffer
set cmdheight=1                         " Number of screen lines to use for the command-line                      
set updatetime=100                      " Time waits after you stop typing
set shortmess+=c                        " Don't pass messages to ins-completion-menu.
" " set guifont=Consolas\ NF:h12:cANSI
set scrolloff=10
" set number                              " Show number of each line
" set relativenumber                      " Show the line number relative to the line with the cursor
set laststatus=2                        " Always have a status line
set linespace=4                         " Number of pixel lines inserted between characters
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
set splitbelow                          " Reverse splits top to bottom
set splitright                          " Reverse splits left to right
set showcmd                             " Show (partial) command in the status line
set viewoptions-=options
set mouse=a
set ttyfast
set lazyredraw
set noswapfile
set nobackup                            " Don't create a backup when overriding a file set nowritebackup
set nowritebackup
set undodir=~/.nvim/undodir
set undofile
set clipboard=unnamedplus
set synmaxcol=128
syntax sync minlines=256
set nofixendofline
set nofixeol

" Tab
" set tabstop=2                           " A tab is two spaces
" set softtabstop=2                       " A tab is two spaces
" set shiftwidth=2                        " Number of spaces to use for autoindenting
" set expandtab                           " Expand tabs by default (overloadable per file type later)