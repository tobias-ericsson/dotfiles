set nocompatible
set wildmode=longest:full
set wildmenu                  " menu has tab completion
set showcmd
set hlsearch
set ignorecase
set smartcase

set autoindent smartindent    " auto/smart indent
set expandtab
set smarttab                  " tab and backspace are smart
set tabstop=2                 " 6 spaces
set backspace=2

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

if has("autocmd")
  filetype on                   " Enable filetype detection
  filetype indent on            " Enable filetype-specific indenting
  filetype plugin on            " Enable filetype-specific plugins
endif


