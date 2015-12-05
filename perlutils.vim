map <F8> :!perl -MData::Dumper -Ilib %
map <F8><F8> :!perl %

let perl_fold=1
set foldmethod=manual
set foldlevelstart=1

" select paragraph and hit F6
map <F6> !perltidy -q<CR>


highlight comments ctermfg=grey
:au BufNewFile,BufRead *.p? :2match comments /^ *warn __PACKAGE__.*/

autocmd FileType perl setlocal commentstring=#%s



