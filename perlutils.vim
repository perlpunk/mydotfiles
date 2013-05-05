map <F8> :!perl -MData::Dumper -Ilib %
map <F8><F8> :!perl %

let perl_fold=1
set foldmethod=manual
set foldlevelstart=1

" select paragraph and hit F6
map <F6> !perltidy -q<CR>
 
" Debugging
imap DEBUG warn __PACKAGE__.':'.__LINE__.": \n";<ESC>hhhi
 
" no more $VAR1 in the logfile without knowing where it comes from
" type $varnameDUMPER or @varnameDUMPER, ... 
imap DUMPER <ESC>^iwarn __PACKAGE__.':'.__LINE__.$".Data::Dumper->Dump([\<ESC>llyw$a], ['<ESC>pa']);<ESC>
 
highlight comments ctermfg=darkgrey
:au BufNewFile,BufRead *.p? :2match comments /^ *warn __PACKAGE__.*/
