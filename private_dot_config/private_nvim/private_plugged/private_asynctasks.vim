" Open quickfix by default with heigh 6
let g:asyncrun_open = 6

" Configure root directory marks
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']

" Map project-run & project-build
noremap <silent> <leader>rr :AsyncTask project-run<cr>
augroup async_task_keymap
  autocmd!
  autocmd FileType c,cpp noremap <silent> <leader>bd :<C-u>AsyncTask project-build<cr>
  autocmd FileType tex noremap <silent> <leader>bd :<C-u>CocCommand latex.Build<CR>
augroup end
