" without these I won't be productive

syntax on

" edit file in same directory
noremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" use ctrl-h,j,k,l to jump between splits
nnoremap <c-j> <c-w>j<c-w><Esc>
nnoremap <c-k> <c-w>k<c-w><Esc>
nnoremap <c-l> <c-w>l<c-w><Esc>
nnoremap <c-h> <c-w>h<c-w><Esc>

" no more $VAR1 in the logfile without knowing where it comes from
" type $varname<leader>DD or @varname<leader>DD, ...
inoremap <leader>DD <ESC>^iwarn __PACKAGE__.':'.__LINE__.$".Data::Dumper->Dump([\<ESC>llywA], ['<ESC>pa']);<ESC>:s/\\\$/$/g<ENTER>
inoremap <leader>YY <ESC>^iwarn "# ".__PACKAGE__.':'.__LINE__.$".'<ESC>ly2wA'."\n".YAML::PP::Highlight::Dump(\<ESC>pa);<ESC>:s/\\\$/$/g<ENTER>


" type $varname\YY
"inoremap <leader>YY <ESC>^2ywiXXX::YYY('===== \<ESC>A =====', \<ESC>pA);<ESC>:s/\\\$/$/g<ENTER>

" Debugging
inoremap <leader>DE warn __PACKAGE__.':'.__LINE__.": \n";<ESC>hhhi

" save
" CTRL-C
nnoremap <C-C> :w<CR>
" same in insert mode
inoremap <C-C> <ESC>:w<CR>

" paste
set pastetoggle=<F10>

" open a new tab
nnoremap <C-T> :tabnew<CR>

" Change to tab left/right
nnoremap <F3> gT
nnoremap <F4> gt



