" indentLine will overwrite 'conceal' color with grey by default.
" Highlight conceal color with your colorscheme.
"let g:indentLine_setColors = 0

" Change the Indent Char
let g:indentLine_char = '▏'

" Customize the conceal color to fit into nord theme
let g:indentLine_color_term = 0
let g:indentLine_bgcolor_term = 'NONE'
let g:indentLine_color_gui = '#3b4252'
let g:indentLine_bgcolor_gui = 'NONE'

" Shortcut to toggle the display of indent guide
nnoremap <silent><nowait> <Leader>i :IndentLinesToggle<CR>

" Only include python
let g:indentLine_fileType = ['c', 'cpp', 'python', 'dart', 'typescript', 'octave']
" Exclude help, man pages and coc-explorer when open c,cpp,python source code
" file, and tex file since indentline will set Conceal highlight
let g:indentLine_fileTypeExclude = ['startify', 'help', 'man', 'coc-explorer', 'tex', 'latex']

let g:indentLine_faster = 1

let g:indent_blankline_filetype_exclude = ['help', 'man', 'coc-explorer']
