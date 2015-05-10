" Set up Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

set tabstop=4
set shiftwidth=4
set expandtab
set ruler

" Use Google style conventions for C++.
autocmd Filetype cpp setlocal ts=2 sw=2 expandtab

set list listchars=tab:>-,trail:·

" Searching
set incsearch
"set ignorecase
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

if filereadable($HOME . "/.vimrc_local")
    source ~/.vimrc_local
endif
