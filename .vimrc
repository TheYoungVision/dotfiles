set nocompatible
filetype off

" Plugin management
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Required
Plugin 'VundleVim/Vundle.vim'

" Interface
Plugin 'joshdick/onedark.vim'
Plugin 'arcticicestudio/nord-vim'

" Autocompletion/Efficiency
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'

call vundle#end()

" General
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set autoread
set hidden
set undofile

" User interface
" Status line
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\ %P
" netrw
let g:netrw_lifestyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
set ruler
set wildmenu
set tabpagemax=40
colorscheme nord
set cursorline
set nu
set relativenumber
set noerrorbells
set novisualbell
set mouse=a
set background=dark
set title

" Swap and backup file options
set noswapfile
set nobackup
set nowb

" Indentation
set autoindent
filetype plugin indent on
set tabstop=4
set shiftwidth=2
set expandtab
set nowrap

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Text rendering option
set encoding=utf-8
set linebreak
set scrolloff=5
syntax enable

" Mapping
let mapleader="\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>n :Lexplore<CR>
inoremap jk <Esc>
map <C-K> :bprev<CR>
map <C-J> :bnext<CR>
map <C-H> <C-W><C-H>
map <C-J> <C-W><C-J>
map <C-K> <C-W><C-K>
map <C-L> <C-W><C-L>
vnoremap . :normal.<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" YouCompleteMe
let g:ycm_python_binary_path = '/usr/bin/python3'

" Ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Miscellanous
set confirm
set nomodeline
set nrformats-=octal
set shell=bash
set directory=$HOME/.vim/swp//
set undodir=$HOME/.vim/undodir//
