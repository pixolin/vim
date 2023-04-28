" General settings  {{{

let mapleader = "\<Space>"

set modelines=0
set number
set cursorline

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
set ignorecase
set showmatch
set smartcase

set hidden
set ttyfast

set laststatus=2
set noshowmode

set showcmd

" Enable auto completion menu after pressing TAB.
set wildmenu
set wildmode=list:longest
set wildignore=*.jpg,*.png,*.gif,*.pdf,*.mo

" set backspace=indent,eol,start
set t_Co=256
set termguicolors

set list
set listchars=tab:->,trail:·,extends:◀,precedes:▶,nbsp:≣
" }}}
" Vim-Plug  {{{
"
" Using https://github.com/junegunn/vim-plug
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
" }}}
" Plugins  {{{
"
call plug#begin()
Plug 'tpope/vim-sensible'              " Universal set of defaults
Plug 'tpope/vim-commentary'            " Comment lines
Plug 'tpope/vim-fugitive'              " Git integration
Plug 'tpope/vim-surround'              " Easily change brackets, quotes
Plug 'junegunn/fzf'                    " Fuzzy file finder
Plug 'easymotion/vim-easymotion'       " Jump anywhere
Plug 'raimondi/delimitmate'            " Close brackets, quotes…
Plug 'editorconfig/editorconfig-vim'   " basic coding standards
Plug 'itchyny/lightline.vim'           " status line
Plug 'junegunn/goyo.vim'               " ~Zen~ Goyo mode
Plug 'dracula/vim', {'as':'dracula'}   " Dracula color theme
call plug#end()
" }}}
" Plugin-Settings  {{{
"
" Easy Motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{char}{label}`
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" More keybindings

nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" Dracula Theme
let g:dracula_colorterm = 0
colorscheme dracula

"Lightline
let g:lightline = {
      \ 'colorscheme' : 'dracula',
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
" }}}
" Vimscript  {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}
