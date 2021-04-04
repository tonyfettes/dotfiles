" Don't be compatible to Vi
" Put at the very start according to vim documentation
set nocompatible

" Map leader
let mapleader=' '
" Life changing mapping
nnoremap <CR> :
vnoremap <CR> :
inoremap <S-CR> <Esc>O
inoremap <A-CR> <Esc>m`o<Esc>k``a
inoremap <A-S-CR> <Esc>m`O<Esc>j``a

"+---------+
"+ Plugins +
"+---------+
if filereadable(stdpath('config') . '/plug.vim')
  exec 'source ' . stdpath('config') . '/plug.vim'
endif

" File type detection
filetype on
filetype plugin on
filetype indent on

" Auto read when changed externally
set autoread

" Visualize the command your input
set showcmd

" Give more space for displaying message
" Coc recommendation
set cmdheight=2

" Interval of syncing buffer to disk in ms
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience in coc.nvim
set updatetime=300

" Encoding
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,default,latin1
" Plugin Fencview can auto detect the file encoding

" Pop up one line above command-line to show possible matches
set wildmenu

" --------
"  Search
" --------

" Incremental search
set incsearch

" Non-sensitive to case when search
set ignorecase

" Sensitive to case when enter upper case letters
set smartcase

" Highlight the search result
set hlsearch
set inccommand=nosplit

nnoremap <silent><nowait> <M-c> :<C-u>nohlsearch<CR>

" --------------
"  Color Scheme
" --------------

" Use dark background
set background=dark

" Color Scheme
colorscheme nord

" ------------
"  Status Bar
" ------------

" Make status bar always visible
set laststatus=2

" Show the cursor position in status bar
set ruler

" Highlight the cursor line
set cursorline

" Show line number
set number
set relativenumber

" Draw the signcolumn (where the error and warnings are shown)
set signcolumn=yes

" -----------------------
"  Indent / Space / Wrap
" -----------------------

" No wrap the line when it reach the window edge
set nowrap

" Expand Tabs to spaces
set expandtab

" Set width of tab to 2
set tabstop=2
set shiftwidth=2
set softtabstop=2

" -------------
"  Undo / Redo
" -------------
" Actually when I want to use undo tree
" is when I accidentally typed something
" which break the undo chain, so maybe
" I don't actually need a persistent
" undo file on my disk

"set undofile
"set undodir=~/.cache/nvim/undo

" --------------
"  Copy / Paste
" --------------
" Synchronize with system clipboard (+ register)
set clipboard=unnamedplus

" ------
"  Move
" ------
set mouse=a

" -----------
"  Highlight
" -----------
" Enable GUI color in terminal
set termguicolors
" Highlight CAUTION, WARNING in comments
"augroup comment_highlight
"  au!
"  au Syntax * syn match commentHighlight "\<\(FIXME\|TODO\|CAUTION\|WARNING\):"
"        \ containedin=.*Comment,vimCommentTitle
"augroup end
"hi def link commentHighlight Todo

" --------------
"  Tab / Window
" --------------
" Tab move keybindings
nnoremap <silent><nowait> <M-Tab> :<C-u>bnext<CR>
nnoremap <silent><nowait> <M-S-Tab> :<C-u>bprevious<CR>
nnoremap <silent><nowait> <M-q> :<C-u>bdelete<CR>
nnoremap <silent><nowait> <M-w> :<C-u>write<CR>
" Window move keybindings
" <C- HJKL> are mapped by plug
nnoremap <silent><nowait> <C-q> :<C-u>q<CR>

" Protect the secret from being leaked from temporary file
augroup gopass_no_extern_files
  au!
  au BufNewFile,BufRead /dev/shm/gopass.* setlocal noswapfile nobackup noundofile
augroup end

"lua <<EOF
"  require'nvim-treesitter.configs'.setup {
"    ensure_installed = "typescript",
"    highlight = {
"      enable = true,
"      disable = { "c" },
"    },
"    context = {
"      enable = true,
"    },
"  }
"EOF

