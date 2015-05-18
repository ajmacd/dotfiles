" Set up Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
if filereadable(expand('~/.at_google'))
else
Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'
Plugin 'rust-lang/rust.vim'
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
set t_Co=16
colorscheme solarized

set tabstop=4
set shiftwidth=4
set expandtab
set ruler

" Use Google style conventions for C++.
autocmd Filetype cpp setlocal ts=2 sw=2 expandtab

" Searching
set incsearch
set ignorecase
set smartcase

set backup
set backupdir=$HOME/tmp
set directory=$HOME/tmp

" Word wrap without line breaks.
set wrap
set formatoptions+=1
set linebreak

" Show partial commands
set showcmd
set wildmenu

if filereadable(expand('~/.vimrc_local'))
    source ~/.vimrc_local
endif
