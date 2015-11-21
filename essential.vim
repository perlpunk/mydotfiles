" without these I won't be productive

" edit file in same directory
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" use ctrl-h,j,k,l to jump between splits
nnoremap <c-j> <c-w>j<c-w><Esc>
nnoremap <c-k> <c-w>k<c-w><Esc>
nnoremap <c-l> <c-w>l<c-w><Esc>
nnoremap <c-h> <c-w>h<c-w><Esc>

" no more $VAR1 in the logfile without knowing where it comes from
" type $varname<leader>D or @varname<leader>D, ... 
imap <leader>D <ESC>^iwarn __PACKAGE__.':'.__LINE__.$".Data::Dumper->Dump([\<ESC>llyw$a], ['<ESC>pa']);<ESC>

" paste
set pastetoggle=<F10>

" open a new tab
nnoremap <C-T> :tabnew<CR>

" Change to tab left/right
nnoremap <F3> gT
nnoremap <F4> gt


