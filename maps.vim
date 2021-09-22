" Remap <leader>
let mapleader = " "
let g:mapleader = " "

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

" Close HTML tag
imap <silent> <C-c> </<C-X><C-O><C-X>

" Faster open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Vertical resize for sidenav
nmap <leader>30 :vertical resize 30<cr>

" Run current python file
:nmap <f5> :exec '!python3' shellescape(@%, 1) <cr>
