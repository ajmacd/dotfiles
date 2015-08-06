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
Plugin 'altercation/vim-colors-solarized'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'rust-lang/rust.vim'
Plugin 'sickill/vim-monokai'

call vundle#end()

set autoindent
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

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

if executable('ag')
    " Use ag instead of ack in ack.vim.
    let g:ackprg = 'ag --nogroup --nocolor'

    " Use ag in CtrlP.
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden --files-with-matches
          \ --ignore .git
          \ --ignore .svn
          \ --ignore .hg
          \ --ignore .DS_Store
          \ --ignore "**/*.pyc"
          \ --ignore .git5_specs
          \ --ignore review
          \ -g ""'
else
    " Fallback to git ls-files if ag is not available.
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
endif

if filereadable(expand('~/.vimrc_local'))
    source ~/.vimrc_local
endif
