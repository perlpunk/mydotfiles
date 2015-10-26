" reload vimrc
nnoremap <C-J> :source ~/.vimrc<CR>

" leave vim
nnoremap Q :q<CR>

" save
" CTRL-C
nnoremap <C-C> :w<CR>
" same in insert mode
imap <C-C> <ESC>:w<CR>

" indent lines
vmap <tab> >gv
vmap <s-tab> <gv
map <tab> >>
map <s-tab> <<

" paste
set pastetoggle=<F10>

" open a new tab
" CTRL-T:
nnoremap <C-T> :tabnew<CR>

" Change to tab left/right
nnoremap <F3> gT
nnoremap <F4> gt


set backspace=indent,eol,start


" ----- git -----
" Get the commit responsible for the current line
nmap <f5> :call BlameCurrentLine()<cr>
" Get the current line number & file name, view the git commit that inserted it
fun! BlameCurrentLine()
let lnum = line(".")
let file = @%
exec "!gitblame.pl " lnum file
endfun


" remember where I was
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\     if line("'\"") > 0 && line ("'\"") <= line("$") |
\         exe "normal g'\"" |
\     endif |

let g:netrw_liststyle=1

" split
nnoremap <leader>w <C-w>v<C-w>l
" use ctrl-h,j,k,l to jump between splits
nnoremap <c-j> <c-w>j<c-w><Esc>
nnoremap <c-k> <c-w>k<c-w><Esc>
nnoremap <c-l> <c-w>l<c-w><Esc>
nnoremap <c-h> <c-w>h<c-w><Esc>

nnoremap gb :ls<CR>:b 

set wildmenu
set wildignorecase
set wildmode=list:longest,full

autocmd FileType perl setlocal commentstring=#%s

