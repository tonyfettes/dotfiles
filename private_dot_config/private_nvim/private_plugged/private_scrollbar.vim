augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained,BufEnter  * silent! lua require('scrollbar').show()
  autocmd WinLeave,FocusLost,BufLeave    * silent! lua require('scrollbar').clear()
augroup end

let g:scrollbar_shape = {
      \ 'head': '█',
      \ 'body': '█',
      \ 'tail': '█',
      \ }

let g:scrollbar_highlight = {
      \ 'head': 'Comment',
      \ 'body': 'Comment',
      \ 'tail': 'Comment',
      \ }
