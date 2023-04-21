nnoremap <SPACE> <Nop>
let mapleader=" "

set nocompatible
syntax on
set modelines=0
set number
highlight LineNr ctermfg=grey

set cursorline
highlight CursorLine cterm=NONE ctermfg=yellow ctermbg=black guibg=grey

set encoding=utf-8
set wrap

set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set copyindent
set expandtab
set noshiftround

set hlsearch
set incsearch
set showmatch
set smartcase

set hidden
set ttyfast

set laststatus=2
set noshowmode

set showcmd

set backspace=indent,eol,start
set t_Co=256

call plug#begin()
Plug 'tpope/vim-commentary'            " Comment lines
Plug 'tpope/vim-fugitive'              " Git integration
Plug 'jiangmiao/auto-pairs'            " Close brackets, quotes… 
Plug 'frazrepo/vim-rainbow'            " Brackets in rainbow colors
Plug 'itchyny/lightline.vim'           " status line
Plug 'vim-airline/vim-airline-themes'  " status line theme
Plug 'dracula/vim'
call plug#end()

" Rainbow brackets
let g:rainbow_active = 1

" Dracula Theme
let g:dracula_colorterm = 0
colorscheme dracula

" Lightline
let g:lightline = {
      \ 'colorscheme' : 'darcula', 
      \ 'mode_map': {
        \ 'n' : 'N',
        \ 'i' : 'I',
        \ 'R' : 'R',
        \ 'v' : 'V',
        \ 'V' : 'VL',
        \ "\<C-v>": 'VB',
        \ 'c' : 'C',
        \ 's' : 'S',
        \ 'S' : 'SL',
        \ "\<C-s>": 'SB',
        \ 't': 'T',
        \ },
      \ 'separator' : {
        \ 'left': '',
        \ 'right': ''
      \ },
      \ 'subseparator' : {
      \ 'left': '',
      \ 'right': ''
      \}
\}
