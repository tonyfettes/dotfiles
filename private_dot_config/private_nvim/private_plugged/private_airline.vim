" Status bar color scheme
let g:airline_theme='nord'
let g:airline_powerline_fonts=1

" Enable airline's support for ale
"let g:airline#extensions#ale#enable=1

" Enable the tabline
let g:airline#extensions#tabline#enabled = 1

" coc.nvim
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#coc_git = 1
