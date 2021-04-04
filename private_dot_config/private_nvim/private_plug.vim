" coc-rime
set runtimepath^=/home/tonyfettes/workspace/tech/coc-rime
" Polyglot
" place at the begin to disable some sub-package
if filereadable(stdpath('config') . '/polyglot.vim')
  exec 'source ' . stdpath('config') . '/polyglot.vim'
endif

call plug#begin(stdpath('data') . '/plugged')

" vim-plug itself
Plug 'junegunn/vim-plug'
" Some sensible defaults
Plug 'tpope/vim-sensible'

" ------
"  Edit
" ------

" Multiple-cursor Pluginand
Plug 'mg979/vim-visual-multi', { 'branch': 'master' }

" Surrounding Manipulation
Plug 'tpope/vim-surround'

" More Text Object
Plug 'wellle/targets.vim'

" Undo Tree (This don't write to disk by default)
Plug 'mbbill/undotree', { 'on': ['UndotreeToggle'] }

" Easy-motion
"Plug 'easymotion/vim-easymotion'
" Rewrite of EasyMotion
Plug 'phaazon/hop.nvim'
" Find next by two characters
"Plug 'justinmk/vim-sneak'
" Lightweight alternative to vim-easymotion
"Plug 'zsugabubus/vim-jumpmotion'

" Smooth scroll (It seems not that useful)
"Plug 'terryma/vim-smooth-scroll'
" Anoher smooth scroll plugin
Plug 'psliwka/vim-smoothie'

" Align the code
Plug 'junegunn/vim-easy-align'

" Show which key to press
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" Scrollbar
Plug 'Xuyuanp/scrollbar.nvim'

" Context preview at the top of window
"Plug 'wellle/context.vim'
"Plug 'vigoux/treesitter-context.nvim' " need nvim-treesitter/nvim-treesitter

" Better soft/hard wrapping for vim
Plug 'reedes/vim-pencil'

" Web browser support
"Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" sudo support
Plug 'lambdalisue/suda.vim'

" -----------
"  Eye Candy
" -----------
" Color scheme
Plug 'tonyfettes/nord-vim'
" Stats bar
Plug 'vim-airline/vim-airline'
" Indention visualization
Plug 'Yggdroot/indentLine', { 'for': ['c', 'cpp', 'python', 'dart', 'typescript', 'octave']}
" Add Indent guide to empty lines
"Plug 'lukas-reineke/indent-blankline.nvim', { 'for': 'python' }
Plug 'lukas-reineke/indent-blankline.nvim'
" Fancy start screen
Plug 'mhinz/vim-startify'
" Icons
Plug 'ryanoasis/vim-devicons'
" Prompt generator
"Plug 'edkolev/promptline.vim'
" Dim the part outside your sight
Plug 'junegunn/limelight.vim', { 'on': ['Limelight', 'Limelight!', 'Limelight!!'] }

"" Issue keysound while typing
"Plug 'skywind3000/vim-keysound'

" ------------------
"  Language Support
" ------------------

" -- C/C++ --
" C/C++/ObjC semantic highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight', { 'for': ['c', 'cpp'] } " depends on coc.nvim

" -- LaTex --
" Conceal charactor for LaTeX
Plug 'KeitaNakamura/tex-conceal.vim', { 'for': 'tex' }
" Vimtex for LaTeX Completion
Plug 'lervag/vimtex', { 'for': ['tex'] }

" -- Markdown --
"Plug 'iamcco/markdown-preview.nvim', { 'for': ['markdown'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }

" -- Python --
"Plug 'tonyfettes/coc-python', {'do': 'yarn install --frozen-lockfile'}
" Jupyter notebook support
Plug 'szymonmaszke/vimpyter', { 'for': ['python', 'ipynb'] }

" -- Verilog --
"Plug 'vhda/verilog_systemverilog.vim', { 'for': ['v', 'sv', 'verilog', 'systemverilog'] }

" -- JSON(C) --
Plug 'neoclide/jsonc.vim'

" -- Texinfo --
Plug 'https://gitlab.com/HiPhish/info.vim.git', { 'for': ['info'], 'on': ['Info'] }

" -- Assembly --
" riscv
Plug 'kylelaker/riscv.vim'

" -- Other --
" Multi-language highlight & indention
Plug 'sheerun/vim-polyglot'
" Multi-language syntax parser
"Plug 'nvim-treesitter/nvim-treesitter'
" isync (mbsync) configuration file
Plug 'chunkhang/vim-mbsync'
" systemd
Plug 'wgwoods/vim-systemd-syntax'

" ---------
"  Linters
" ---------

" Syntax checker
"Plug 'dense-analysis/ale'

" Syntax checker & make automation
"Plug 'neomake/neomake'

" -------------
"  Compeletion
" -------------
" Code compeletion Framework
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}


" ---------------------
"  Tag Generate & View
" ---------------------

" Ctags geneterater for symbol viewing
"Plug 'ludovicchabant/vim-gutentags'

" LSP symbol viewer (Still a bit away from ideal, and I could use CocList for
" symbol management)
"Plug 'liuchengxu/vista.vim', {'for': ['c', 'cpp']}
Plug 'liuchengxu/vista.vim'

" More general symbol viewer
Plug 'majutsushi/tagbar'

" -------------
"  CJK Support
" -------------

" Auto detect CJK and Unicode file encodings
"Plug 'mbbill/fencview'

" Keep input method in English when in normal mode
" (lilydjwg's version)
" Disable by default because its TOO SLOW
"Plug 'lilydjwg/fcitx.vim'

" Count Chinese characters
"Plug '~/.local/share/nvim/plugged/ccount', { 'for': ['text', 'tex'] }
Plug 'tonyfettes/ccount.vim', { 'for': ['text', 'tex', 'markdown'] }

" Rime IM in vim
"Plug 'infmagic2047/vim-rime-im'

" --------------------
"  Make / Run / Debug
" --------------------

" REPL
Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto'] }
" Cool repl, but lack multi-line support here
Plug 'metakirby5/codi.vim', { 'on': ['Codi'] }

" Tasks system like VSCode
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asyncrun.extra'
Plug 'benmills/vimux'

" -----------------
"  Terminal / File
" -----------------

" Floatimg terminal
Plug 'voldikss/vim-floaterm'

" Unify the window moving key in tmux & vim
Plug 'christoomey/vim-tmux-navigator'

" NERDTree
"Plug 'preservim/nerdtree'

" File manager
"Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}

" ----------------------
"  Code/Time Management
" ----------------------

" Show git information on airline (coc-git)
Plug 'tpope/vim-fugitive'
"Plug 'lambdalisue/gina.vim'

" Workspace (Session) management
Plug 'thaerkh/vim-workspace'

" Wakatime
"Plug 'wakatime/vim-wakatime'
" ActivityWatch
"Plug 'ActivityWatch/aw-watcher-vim'

"" Vim APM
"Plug 'ThePrimeagen/vim-apm'

call plug#end()

" ------------------------------
"  Plug configuration file list
" ------------------------------
"let b:PlugConfigList = [
"  \ 'vim-plug',
"  \ 'vim-sensible',
"  \ 'vim-visual-multi',
"  \ 'vim-surround',
"  \ 'undotree',
"  \ 'vim-easymotion',
"  \ ]

function! s:loadSingleConfig(configFile)
  if filereadable(stdpath('config') . '/plugged/' . a:configFile)
    exec 'source ' . stdpath('config') . '/plugged/' . a:configFile
  endif
endfunction

function! s:loadAllConfig(pluginList)
  for l:pluginName in a:pluginList
    call s:loadSingleConfig(l:pluginName . '.vim')
  endfor
endfunction

let b:pluginList = [
      \ 'airline',
      \ 'ale',
      \ 'asynctasks',
      \ 'coc',
      \ 'floaterm',
      \ 'indentLine',
      \ 'limelight',
      \ 'tex-conceal',
      \ 'undotree',
      \ 'vimtex',
      \ 'vim-lsp-cxx-highlight',
      \ 'vim-easymotion',
      \ 'vim-visual-multi',
      \ 'vim-easy-align',
      \ 'vim-which-key',
      \ 'vista',
      \ 'scrollbar',
      \]

call s:loadAllConfig(b:pluginList)
