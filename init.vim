" ===========================
" # CONTENTS
" 
" = HOSTS
" = ABBBREVIATIONS
" = VIM-PLUG
" = OVERRIDES
" = MAPPINGS
" = PLUGINS-CONFIG
"
" ===========================

lua require('init')

set nocompatible
set t_Co=256
set termguicolors
set encoding=UTF-8
syntax on
filetype plugin on

autocmd FileType netrw setl bufhidden=delete

" #===== HOSTS =====#
let g:python_host_prog = "/usr/bin/python2.7"
let g:python3_host_prog = "/usr/bin/python3.8"

" #===== NVR =====#
if has('nvim')
  let $GIT_EDITOR = 'nvr -cc split --remote-wait'
endif

autocmd FileType gitcommit,gitrebase,gitconfig set bufhidden=delete

" #===== ABBREVIATIONS =====#
:ab artisan !php artisan
:ab start !cmd.exe /C start explorer
:ab calc !calc
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
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'jwalton512/vim-blade'

" LSP & Completions
Plug 'vim-scripts/loremipsum'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'hrsh7th/nvim-compe'
" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-nvim-lsp'

" Themes
Plug 'rakr/vim-one'

" Layout
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'iamcco/markdown-preview.nvim'
Plug 'ryanoasis/vim-devicons'

" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" Core
Plug 'editorconfig/editorconfig-vim'
Plug 'tkhren/vim-fake'
Plug 'tpope/vim-dispatch'
Plug 'easymotion/vim-easymotion'
Plug 'joshua-afk/vim-px-to-em'

" Etc
Plug 'machakann/vim-sandwich'
Plug 'tommcdo/vim-lion'
" Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'

call plug#end()

" #===== OVERRIDES =====#
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

" Save positions on quit
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview

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
set noswapfile
set nobackup                            " Don't create a backup when overriding a file set nowritebackup                       " You won't have a backup in emergencies `DO THIS ON YOUR OWN RISK`
set nowritebackup
set undodir=~/.config/nvim/undodir
set undofile
set clipboard=unnamedplus

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

" Remap beginning and ending of line 
nnoremap H ^
nnoremap L $

" Quickly open vimrc
nnoremap <leader>vrc :vsplit $MYVIMRC<CR>

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
nnoremap <leader>yy  "+yy

" Paste from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Hit <enter> to insert new line in normal mode
map <enter> o<esc>
map <s-enter> o<esc>

" Fast close HTMl tag
" imap <leader>/ </<c-x><c-o>

" Faster open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Vertical resize for sidenav
nmap <leader>30 :vertical resize 30<cr>

" Run current python file
:nmap <f5> :exec '!python3' shellescape(@%, 1) <cr>

" #===== PLUGINS-CONFIG =====#
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/nvim-tree.vim
source $HOME/.config/nvim/plug-config/lion.vim
source $HOME/.config/nvim/plug-config/lsp-config.vim
source $HOME/.config/nvim/plug-config/ultisnips.vim
" source $HOME/.config/nvim/lua/plug-config/compe-config.lua
" source $HOME/.config/nvim/ultisnips/html.snippets
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
source $HOME/.config/nvim/theme-config/one.vim

" Startify config (Bookmarks)
let g:startify_bookmarks = [
    \ "$HOME/.config/nvim/init.vim",
    \ "/mnt/c/Users/Kazuyuki/projects/joshua-afk-v3/README.md",
    \ "/mnt/c/laragon/www/sandbox-php/vanilla.php",
    \ "/mnt/c/sandbox-ruby/myapp/README.md",
    \ "/mnt/c/sandbox-ruby/play/test.rb",
    \ ]

" vim-hard-time
let g:hardtime_default_on = 0

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

lua << EOF
--[[
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- HTML
require'lspconfig'.html.setup {
  cmd = { "vscode-html-language-server", "--stdio" },
    filetypes = { "html" },
    init_options = {
      configurationSection = { "html", "css", "javascript" },
      embeddedLanguages = {
        css = true,
        javascript = true
      },
    },
    root_dir = function(fname)
          return util.root_pattern('package.json', '.git')(fname) or util.path.dirname(fname)
        end,
    settings = {},
  capabilities = capabilities,
  on_attach=require'completion'.on_attach,
}

-- PHP
require'lspconfig'.intelephense.setup{
  on_attach=require'completion'.on_attach,
}

-- Python
require'lspconfig'.pyright.setup{
cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_dir = function(fname)
          local root_files = {
            'pyproject.toml',
            'setup.py',
            'setup.cfg',
            'requirements.txt',
            'Pipfile',
            'pyrightconfig.json',
          }
          return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
        end,
    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          diagnosticMode = "workspace",
          useLibraryCodeForTypes = true
        }
      }
    },
  on_attach=require'completion'.on_attach,
}

-- Compe
vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = false;

  source = {
    path = true;
    buffer = true;
    calc = true;
    vsnip = false;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = false;
    ultisnips = true;
  };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
--]]
EOF


highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight Normal guibg=none
highlight NonText guibg=none

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
