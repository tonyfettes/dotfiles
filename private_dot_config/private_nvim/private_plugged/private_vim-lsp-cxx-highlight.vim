" Change the default highlight group
function! OverrideLspCxxHighlights() abort
  highlight LspCxxHlGroupEnumConstant ctermfg=Magenta guifg=#B48EAD cterm=none gui=none
  highlight LspCxxHlGroupNamespace ctermfg=Yellow guifg=#EBCB8B cterm=none gui=none
  highlight LspCxxHlGroupMemberVariable ctermfg=White guifg=White cterm=none gui=none
  hi default link LspCxxHlSymVariable Identifier
  hi default link LspCxxHlSymParameter Identifier
  hi default link LspCxxHlSymUnknown Identifier
  hi default link LspCxxHlSymUnknownStaticField Identifier
endfunction

augroup OverrideLspCxxHighlightsGroup
  autocmd!
  autocmd ColorScheme * call OverrideLspCxxHighlights()
augroup end
