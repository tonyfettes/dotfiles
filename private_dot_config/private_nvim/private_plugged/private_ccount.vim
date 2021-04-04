augroup chinese_count_for_txt_tex
  autocmd!
  autocmd FileType text,tex nnoremap <leader>cc :call chinese_count#ChineseCount()<CR>
  autocmd FileType text,tex nnoremap <leader>cp :call chinese_count#ChineseCountPunct()<CR>
augroup END
