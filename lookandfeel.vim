"set cindent
"set smartindent
set ruler
set statusline=[%02n]%*\ %2*%F%*\ (%M)b:%b\ %=%3*<%l,%c%V>%*
set laststatus=2

syntax on
set autoindent

set et
" Tabstops
set ts=4
set sts=4
set sw=4
set sws=4

set modeline

" highlight while typing
set incsearch
" highlight search
set hls

" where am I
set cursorline
set ruler
set showmode

set textwidth=80
set colorcolumn=80

set t_Co=256
highlight Normal ctermbg=black
hi  ColorColumn  ctermbg=17 " dark blue

set scrolloff=3

set wildmenu
set wildmode=list:longest

" show relative line numbers, but show the current real line number
set relativenumber
if version >= 704
    set number
endif

set ignorecase
set smartcase

set showmatch

" show cmd in status bar
set showcmd

set list
"set listchars=tab:▸\ ,eol:¬,trail:·
set listchars=tab:▸\ ,trail:·

" for copy & paste: deactivate line numbers and invisible chars:
map <silent> <leader>sl :set relativenumber<CR>:set list<CR>
map <silent> <leader>nl :set norelativenumber<CR>:set nolist<CR>

nnoremap <leader><space> :nohlsearch<cr>

highlight CursorLine ctermbg=008 cterm=NONE

set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,latin1

map <leader>rl :set statusline=[%02n]%*\ %2*%t%*\ (%M)b:%b\ %<%r%{FindSub()}\ %=%3*<%l,%c%V>%*<CR>
map <leader>rf :set statusline=[%02n]%*\ %2*%F%*\ (%M)b:%b\ %=%3*<%l,%c%V>%*<CR>
