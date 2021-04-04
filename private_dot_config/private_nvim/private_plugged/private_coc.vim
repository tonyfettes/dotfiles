" Coc extension list
" - [x] coc-zi
" - [x] coc-xml
" - [x] coc-word*
" - [x] coc-vimtex*
" - [x] coc-vimlsp
" - [x] coc-tasks
" - [ ] coc-tabnine
" - [x] coc-syntax
" - [ ] coc-svg
" - [x] coc-sh
" - [x] coc-python
" - [x] coc-markdownlint
" - [x] coc-lists
" - [x] coc-json
" - [x] coc-highlight
" - [ ] coc-gitignore
" - [x] coc-git*
" - [x] coc-explorer
" - [x] coc-diagnostic
" - [x] coc-cmake
" - [x] coc-clangd
" - [x] coc-ci
" - [x] coc-browser
" - [ ] coc-bookmark
" - [x] coc-bibtex
" - [x] coc-smartf

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<M-n>'

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
"inoremap <expr> <leader><tab> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" Highlight the symbol and its references when holding the cursor.
augroup coc_highlight_reference
  autocmd!
  autocmd CursorHold * silent call CocActionAsync('highlight')
augroup end

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>rf  <Plug>(coc-format-selected)
nmap <leader>rf  <Plug>(coc-format-selected)

augroup coc_rc_mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Code Action
"function! s:cocActionsOpenFromSelected(type) abort
"  execute 'CocCommand actions.open ' . a:type
"endfunction

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
"xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
"nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" CodeLens Code
highlight CocCodeLens guifg = '#4C566A'

" Mappings for CoCList
"nnoremap <silent> <leader>   :<C-u>CocList<cr>
" Show all diagnostics.
nnoremap <silent> <leader>d  :<C-u>CocList diagnostics<cr>
" Show commands.
nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>
nnoremap <silent> <leader>cv  :<C-u>CocList vimcommands<cr>
" Manage extensions.
nnoremap <silent> <leader>e  :<C-u>CocList marketplace<cr>
" Find symbol of current document.
nnoremap <silent> <leader>o  :<C-u>CocList files<cr>
" Search workspace symbols.
nnoremap <silent> <leader>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <leader>p  :<C-u>CocListResume<CR>
" Open bookmark list
nnoremap <silent> <leader>mm :<C-u>CocList bookmark<CR>
" Show buffer (Not needed because I have bufferline)
"nnoremap <silent> <leader>b  :<C-u>CocList buffers<CR>
" Git status
nnoremap <silent> <leader>g  :<C-u>CocList --normal gstatus<CR>
" File
nnoremap <silent> <leader>l :<C-u>CocCommand explorer<CR>
" (R)un Tasks
nnoremap <silent> <leader>t :<C-u>CocList tasks<CR>
" helptags
nnoremap <silent> <leader>h :<C-u>CocList helptags<CR>
" fuzzy-finder / grep
nnoremap <silent> <leader>f :<C-u>CocList grep<CR>

" coc-git (moved to airline.vim)
"let g:airline#extensions#hunks#coc_git = 1

" coc-ci
"nmap <silent> w <Plug>(coc-ci-w)
"nmap <silent> b <Plug>(coc-ci-b)

" coc-terminal
"nmap <Leader>t <Plug>(coc-terminal-toggle)
" some keybindings to help me get out of terminal normally
"tnoremap <C-[> <C-\><C-n>

" coc-explorer
"nnoremap <silent><nowait> <leader>e :<C-u>CocCommand explorer<CR>

" coc-bookmark
nnoremap <silent> <leader>mb <Plug>(coc-bookmark-toggle)
nnoremap <silent> <leader>ma <Plug>(coc-bookmark-annotate)
nnoremap <silent> <leader>mj <Plug>(coc-bookmark-next)
nnoremap <silent> <leader>mk <Plug>(coc-bookmark-prev)

"" coc-clangd
augroup coc_clangd_keybind
  autocmd!
  autocmd FileType c,cpp nnoremap <silent> <leader>sw :<C-u>CocCommand clangd.switchSourceHeader<CR>
augroup end

" coc-highlight

" coc-smartf
" <Esc> to cancel
"nmap f <Plug>(coc-smartf-forward)
"nmap F <Plug>(coc-smartf-backward)

" coc-vimlsp
let g:markdown_fenced_languages = [
                  \ 'vim'.
                  \ 'help'
                  \]
"" coc-texlab
"augroup coc_texlab_cursor_hold_forward_search
"  autocmd!
"  autocmd FileType tex,latex autocmd CursorHold * silent exec 'CocCommand latex.ForwardSearch'
"augroup end
