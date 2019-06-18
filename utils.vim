" reload vimrc
nnoremap <leader>R :source ~/.vimrc<CR>

set modelines=0
set nomodeline

" leave vim
nnoremap Q :q<CR>

" indent lines
vmap <tab> >gv
vmap <s-tab> <gv
map <tab> >>
map <s-tab> <<

" highlight last inserted text
nnoremap gV `[v`]

" save session
nnoremap <leader>S :mksession<CR>

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

" git rebase -i: replace pick with squash/fixup
autocmd FileType gitrebase noremap <leader>sq ^cwsquash<ESC>j^
autocmd FileType gitrebase noremap <leader>fx ^cwfixup<ESC>j^

" open explorer
let g:netrw_liststyle=3
map <leader>k :E<cr>

" get a diff since the last save
noremap <leader>wd :w !diff % -<CR>

noremap <leader>S  :%s//gc<LEFT><LEFT><LEFT>

au BufNewFile,BufRead Makefile set noet
au BufNewFile,BufRead *.pl,*.pm,*.t set et

au BufNewFile,BufRead *.yaml,*.yml set et | set sts=2 | set sws=2 | set foldmethod=indent

noremap <leader>date :r !date --rfc-3339=seconds
