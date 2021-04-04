" Since Coc.nvim is used, so vista executive is sed to coc
let g:vista_default_executive = 'ctags'

" Because currently coc.nvim seems has bug with vista.vim, so use ctags
"let g:vista_executive_for = {
"      \ 'cpp': 'ctags'
"      \ }
nnoremap <silent><nowait> <leader>o :<C-u>Vista!!<CR>

let g:vista#renderer#icons = {
                  \ 'func': "",
                  \ 'function': "",
                  \ 'functions': "",
                  \ 'var': "",
                  \ 'variable': "",
                  \ 'variables': "",
                  \ 'const': "",
                  \ 'constant': "",
                  \ 'method': "",
                  \ 'package': "",
                  \ 'packages': "",
                  \ 'enum': "",
                  \ 'enumerator': "",
                  \ 'module': "",
                  \ 'modules': "",
                  \ 'type': "",
                  \ 'typedef': "",
                  \ 'types': "",
                  \ 'field': "",
                  \ 'fields': "",
                  \ 'macro': "",
                  \ 'macros': "",
                  \ 'map': "",
                  \ 'class': "",
                  \ 'augroup': "",
                  \ 'struct': "",
                  \ 'union': "",
                  \ 'member': "",
                  \ 'target': "",
                  \ 'property': "",
                  \ 'interface': "",
                  \ 'namespace': "",
                  \ 'subroutine': "",
                  \ 'implementation': "",
                  \ 'typeParameter': "",
                  \ 'default': ""
                  \ }
