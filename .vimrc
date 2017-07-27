" Basic work vimrc

syntax on
set backspace=indent,eol,start
set relativenumber
set number
set modeline
set hidden
colorscheme desert

" Remapping test for escape
inoremap jk <esc>

" Real programmers don't use TABs but spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" indenting
" set autoindent
set smartindent
" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

set splitright
set splitbelow

let mapleader=" "

" Getting rid of trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" Set working dir globally to the location of the current file
nnoremap <Leader>cd :cd %:p:h<CR>

" Make removing highlights a bit easier
nnoremap <Leader>nh :nohl<CR>

nnoremap <Leader>' bi'<esc>ea'<esc>
nnoremap <Leader>" bi"<esc>ea"<esc>

" Remove trailing whitespace for all files
autocmd BufWritePre * :%s/\s\+$//e
