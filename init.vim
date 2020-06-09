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
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"   Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif

" Navigation
" Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'psliwka/vim-smoothie'
Plug 'rhysd/clever-f.vim'
Plug 'breuckelen/vim-resize'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
" Plug 'kien/ctrlp.vim'

" Linters & Fixers
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'jwalton512/vim-blade'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
" Plug 'dense-analysis/ale'

" LSP & Completions
Plug 'SirVer/ultisnips'                 " Custom Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'deoplete-plugins/deoplete-jedi'   " Python Completion
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } " Javascript Completion

" Themes
Plug 'hzchirs/vim-material'
Plug 'morhetz/gruvbox'

" Layout
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'iamcco/markdown-preview.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'

" Git
Plug 'tpope/vim-fugitive'

" Core
Plug 'tkhren/vim-fake'
Plug 'tpope/vim-dispatch'
Plug 'arnaud-lb/vim-php-namespace'
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
Plug 'tpope/vim-projectionist'
Plug 'swekaj/php-foldexpr.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

call plug#end()

" #===== OVERRIDES =====#
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

" Save positions on quit
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview

set hidden                              " Hide current buffer when switching on another buffer
set nobackup                            " Don't create a backup when overriding a file set nowritebackup                       " You won't have a backup in emergencies `DO THIS ON YOUR OWN RISK`
set cmdheight=1                         " Number of screen lines to use for the command-line                      
set updatetime=300                      " Time waits after you stop typing
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show signcolumn
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h10.5:cANSI
set guifont=Consolas\ NF:h12:cANSI
set guioptions-=T                       " Removes top toolbar
set guioptions-=R                       " Removes right hand scroll bar
set go-=L                               " Removes left hand scroll bar
set number                              " Show number of each line
set relativenumber                      " Show the line number relative to the line with the cursor
set laststatus=2                        " Always have a status line
set linespace=4                         " Number of pixel lines inserted between characters
" set signcolumn=no                       " Remove the grey bar on left 
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
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

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
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" Fast close HTMl tag
imap <leader>/ </<C-X><C-O>

" Faster open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Open split terminal
nnoremap <leader>t :split<cr>:term<cr>

" #===== PLUGINS-CONFIG =====#
" Vim Material config (Colorscheme)
" colorscheme vim-material
let g:material_style='palenight'

" gruvbox-colorscheme-config
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" Airline config
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c'],
  \ [ 'x', 'y', 'z', 'warning']
\ ]
let g:airline_theme='gruvbox'
let g:airline_section_z = '%3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# :%3v/%03{col("$")-1}'
let g:airline_powerline_fonts = 1

" Startify config
let g:startify_bookmarks = [
    \ "/mnt/c/Users/joshua-afk/Documents/_parking/todo.md",
    \ "/mnt/c/laragon/www/projects/README.md",
    \ "/mnt/c/laragon/www/construct-ph-improve/README.md",
    \ "/mnt/c/laragon/www/vue-beginner/index.html",
    \ "/mnt/c/laragon/www/tasklist/README.md",
    \ "/mnt/c/laragon/www/joshua-afk/README.md",
    \ "/mnt/c/laragon/www/joshua-afk-v2/README.md",
    \ "/mnt/c/laragon/www/flower-shop/dist/index.html",
    \ "/mnt/c/python_sandbox/README.md",
    \ "/mnt/c/laragon/www/_python/pollster_project/README.md",
    \ ]

" NerdTree config
" nmap <space>b :NERDTreeToggle<cr>
" nmap <leader>f :NERDTreeFind<cr>
" let NERDTreeShowHidden = 1

" NerdCommenter config
" let g:NERDSpaceDelims = 1

" " CtrlP config
" let g:ctrlp_show_hidden = 1
" let g:ctrlp_clear_cache_on_exit = 0

" CtrlP config (Don't search in these directories)
" set wildignore+=*/app/Console**
" set wildignore+=*/app/Exceptions**
" set wildignore+=*/app/bootstrap**
" set wildignore+=*/vendor/**
" set wildignore+=*/node_modules/**
" set wildignore+=*/public/**

" vim-rooter-config
let g:rooter_targets = '*.yml,*.yaml'
let g:rooter_patterns = ['Rakefile', '.git/', 'todo.md']

" fzf-config
nnoremap <silent> <C-p> :Files<cr>
nnoremap <silent> <C-g> :GFiles<cr>
nnoremap <silent> <C-o> :Buffers<cr>
nnoremap <leader>ag :Ag<cr>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Refresh CtrlP & NerdTree
" nnoremap <leader>r :CtrlPClearCache<cr>:NERDTreeRefreshRoot<cr>
" nnoremap <leader>r :NERDTreeRefreshRoot<cr>

" Vim Commentary config
setlocal commentstring=#\ %s

" vim-fugitive-config
nnoremap <space>gs :Gstat<cr>
nnoremap <space>gd :Gdiff<cr>
nnoremap <space>gb :Gblame<cr>
nnoremap <space>gl :Glog<cr>
" nnoremap <space>gp :Gpush<cr>

" Explorer
nmap <leader>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" vim-coc
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" deoplete-config
" let g:deoplete#enable_at_startup = 1
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<Down>"
" inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<Up>"
" inoremap <expr><C-l> pumvisible() ? "\<C-y>" : "\<C-l>"

" deoplete-ternjs-config
"let g:deoplete#sources#ternjs#filetypes = [
"            \ 'jsx',
"            \ 'javascript.jsx',
"            \ 'vue',
"            \ '...'
"            \ ]

" Vim Lion config
let g:lion_create_maps = 1
let b:lion_squeeze_spaces = 1

" emmet-config
let g:user_emmet_mode='a'                   " Enable all function in all mode.
let g:user_emmet_leader_key=','             " Redefine emmet key
let g:user_emmet_install_global = 0
autocmd FileType html,blade,css EmmetInstall

" ale-config
" let g:ale_sign_column_always = 1
" let g:ale_sign_error = '>>'
" let g:ale_sign_warning = '--'
" let g:airline#extensions#ale#enabled = 1
" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'javascript': ['eslint'],
" \}

" UltiSnips-config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"         " If you want :UltiSnipsEdit to split your window.

" Vim PHP Namespace config
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <leader>u <esc>:call IPhpInsertUse()<cr>
autocmd FileType php noremap <leader>u :call PhpInsertUse()<cr>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <leader>e <esc>:call IPhpExpandClass()<cr>
autocmd FileType php noremap <leader>e :call PhpExpandClass()<cr>
let g:php_namespace_sort_after_insert = 1

" Vim-Blade config
let g:blade_custom_directives = ['datetime', 'javascript', 'elserole', 'elsecan']
let g:blade_custom_directives_pairs = {
    \ 'error'         : 'enderror',
    \ 'can'           : 'endcan',
    \ 'canany'        : 'endcanany',
    \ 'cannnot'       : 'endcannnot',
    \ 'hidden'        : 'endhidden',
    \ 'role'          : 'endrole',
    \ 'hasrole'       : 'endhasrole',
    \ 'hasany'        : 'endhasany',
    \ 'hasallroles'   : 'endhasallroles',
    \ 'unlessrole'    : 'endunlessrole',
    \ 'alert'         : 'endalert',
    \ 'inputalert'    : 'endinputalert',
    \ }

" vim-easy-motion
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" vim-hard-time
let g:hardtime_default_on = 0

" vim-resize config
let g:vim_resize_disable_auto_mappings = 1
nnoremap <silent> <left> :CmdResizeLeft<cr>
nnoremap <silent> <down> :CmdResizeDown<cr>
nnoremap <silent> <up>   :CmdResizeUp<cr>
nnoremap <silent> <right> :CmdResizeRight<cr>

" ranger
let g:rnvimr_ex_enable = 1
nmap <space>r :RnvimrToggle<cr>

" Custom file type behavior
autocmd Filetype html setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype blade setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype vue setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype js setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype css setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype scss setlocal ts=2 sw=2 expandtab foldmethod=manual
autocmd Filetype php setlocal foldmethod=syntax

" PHP Fold Stuff
let b:phpfold_text_right_lines = 1
let b:phpfold_text_percent = 1
let b:phpfold_use = 1

" Get nvim version
function! NvimVer()
    redir => s
    silent! version
    redir END
    return matchstr(s, 'NVIM v\zs[^\n]*')
endfunction
