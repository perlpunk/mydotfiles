" reload vimrc
map <C-J> :source ~/.vimrc<CR>

" leave vim
map Q :q<CR>

" save
" CTRL-C
map <C-C> :w<CR>
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
map <C-T> :tabnew<CR>

" Change to tab left/right
map <F3> gT
map <F4> gt

" open file under cursor in new tab
map <F2> :tabedit <cfile><CR>


" remember where I was
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\     if line("'\"") > 0 && line ("'\"") <= line("$") |
\         exe "normal g'\"" |
\     endif |


