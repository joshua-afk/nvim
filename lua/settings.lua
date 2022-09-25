g = vim.g
o = vim.o
opt = vim.opt
api = vim.api

o.t_Co=256
o.encoding='UTF-8'
o.hidden=true
o.cmdheight=1
o.updatetime=100
o.shortmess=o.shortmess .. "c"
o.scrolloff=8
o.number=true
o.relativenumber=true
o.cursorline=true
o.laststatus=2
o.linespace=4
o.showmode=true
o.nohlsearch=true
o.wrap=false
o.tags='tags'
o.shiftround=true
o.backspace='indent,eol,start'
o.autoindent=true
o.copyindent=true
o.ignorecase=true
o.smartcase=true
o.splitbelow=true
o.splitright=true
o.showcmd=true
o.viewoptions = o.viewoptions:gsub('options', '')
o.mouse='a'
o.ttyfast=true
o.lazyredraw=true
o.clipboard='unnamedplus'
o.fixendofline=false
o.completeopt='menu,menuone,noselect'

-- Backup file
o.noswapfile=true
o.nobackupfile=true
o.nowritebackup=true
o.undofile=false
--opt.undodir='~/.nvim/undodir'

-- TAB
o.tabstop=2                           					-- Width of tab character
o.softtabstop=2                       					-- Fine tunes the amount of white space to be added
o.shiftwidth=2                        					-- Number of spaces to use for autoindenting
o.expandtab=true                           				-- Use spaces instead of tabs
