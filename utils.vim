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

" highlight last inserted text
nnoremap gV `[v`]

" save session
nnoremap <leader>s :mksession<CR>

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

nnoremap gb :ls<CR>:b 

set wildmenu
set wildignorecase
set wildmode=list:longest,full

autocmd FileType perl setlocal commentstring=#%s

