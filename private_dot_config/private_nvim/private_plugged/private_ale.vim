" Enable linters
let g:ale_linters = {
      \ 'c': ['clangtidy'],
      \ 'cpp': ['clangtidy'],
      \}

" Enable Fixers
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'c': ['clang-format'],
      \ 'cpp': ['clang-format'],
      \}

" Just use linters listed above
let g:ale_linters_explicit = 1

" Don't lint just after text changed
let g:ale_lint_on_text_changed = 'never'

" Don't lint just after leaving insert mode
let g:ale_lint_on_insert_leave = 0

let g:ale_c_cppcheck_options = '-I /usr/local/include --enable=all --template=cppcheck1 --suppress=missingIncludeSystem'

let g:ale_virtualtext_cursor = 1
