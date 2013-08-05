execute pathogen#infect()
syntax on
filetype plugin indent on
nnoremap <silent> <C-f>      :FufFile<CR>
nnoremap <silent> <C-b>      :FufBuffer<CR>
nnoremap <C-z> <C-f><CR>
nnoremap <C-a> <C-b><CR>
noremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <Space> :nohlsearch<CR><CR>
nnoremap <C-s>      :w<CR>
inoremap <C-s>      <Esc>:w<CR>
vnoremap <C-s>      <Esc>:w<CR>
nnoremap <C-w>q      :q<CR>
inoremap <C-w>q      <Esc>:q<CR>
vnoremap <C-w>q      <Esc>:q<CR>

" configure expanding of tabs for various file types
" au BufRead,BufNewFile *.py set expandtab
" au BufRead,BufNewFile *.c set noexpandtab
" au BufRead,BufNewFile *.h set noexpandtab
" au BufRead,BufNewFile Makefile* set noexpandtab
"
" "
" --------------------------------------------------------------------------------
"  " configure editor with tabs and nice stuff...
"  "
"  --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
au BufEnter *.py set textwidth=80        " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                       " show line and column number
syntax on   			" syntax highlighting
set showcmd 			" show (partial) command in status line

" comment line, selection with Ctrl-N,Ctrl-N
au BufEnter *.py nnoremap  <C-N><C-N>    mn:s/^\(\s*\)#*\(.*\)/\1#\2/ge<CR>:noh<CR>`n
au BufEnter *.py inoremap  <C-N><C-N>    <C-O>mn<C-O>:s/^\(\s*\)#*\(.*\)/\1#\2/ge<CR><C-O>:noh<CR><C-O>`n
au BufEnter *.py vnoremap  <C-N><C-N>    mn:s/^\(\s*\)#*\(.*\)/\1#\2/ge<CR>:noh<CR>gv`n

" uncomment line, selection with Ctrl-N,N
au BufEnter *.py nnoremap  <C-N>n     mn:s/^\(\s*\)#\([^ ]\)/\1\2/ge<CR>:s/^#$//ge<CR>:noh<CR>`n
au BufEnter *.py inoremap  <C-N>n     <C-O>mn<C-O>:s/^\(\s*\)#\([^]\)/\1\2/ge<CR><C-O>:s/^#$//ge<CR><C-O>:noh<CR><C-O>`n
au BufEnter *.py vnoremap  <C-N>n     mn:s/^\(\s*\)#\([^ ]\)/\1\2/ge<CR>gv:s/#\n/\r/ge<CR>:noh<CR>gv`n


" Remapping cursor key "
nnoremap j h
nnoremap k j
nnoremap i k
nnoremap <C-j> 5h
nnoremap <C-k> 5j
nnoremap <C-i> 5k
nnoremap <C-l> 5l
nnoremap h i
nnoremap H I
nnoremap ; $
nnoremap <C-h> ^
nnoremap q b
nnoremap ' d$

vnoremap j h
vnoremap k j
vnoremap i k
vnoremap <C-j> 5h
vnoremap <C-k> 5j
vnoremap <C-i> 5k
vnoremap <C-l> 5l
vnoremap H I
vnoremap ; $
vnoremap <C-h> ^
vnoremap q b
