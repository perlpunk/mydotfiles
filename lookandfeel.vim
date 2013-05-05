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

" highlight search
set hls

" where am I
set cul
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

set relativenumber

set ignorecase
set smartcase

set showmatch

set list
set listchars=tab:▸\ ,eol:¬,trail:·

" for copy & paste: deactivate line numbers and invisible chars:
map <silent> <leader>sl :set relativenumber<CR>:set list<CR>
map <silent> <leader>nl :set norelativenumber<CR>:set nolist<CR>

nnoremap <leader><space> :noh<cr>

highlight CursorLine ctermbg=008 cterm=NONE

set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,latin1

map <leader>rl :set statusline=[%02n]%*\ %2*%t%*\ (%M)b:%b\ %<%r%{FindSub()}\ %=%3*<%l,%c%V>%*<CR>
map <leader>rf :set statusline=[%02n]%*\ %2*%F%*\ (%M)b:%b\ %=%3*<%l,%c%V>%*<CR>
