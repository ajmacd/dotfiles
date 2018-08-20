" Set up Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

Plugin 'altercation/vim-colors-solarized'
Plugin 'crusoexia/vim-monokai'

Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'JuliaLang/julia-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'r0mai/vim-djinni'
Plugin 'rust-lang/rust.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'slashmili/alchemist.vim'
Plugin 'elixir-lang/vim-elixir'

call vundle#end()

" Uncomment to disable YCM.
"let g:loaded_youcompleteme = 1
let g:ycm_extra_conf_globlist = ['~/src/*']
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

set autoindent
filetype plugin indent on

syntax enable
set background=dark
set t_Co=256
colorscheme monokai
"colorscheme solarized
"set spell

let g:airline#extensions#tabline#enabled = 1

set tabstop=4
set shiftwidth=4
set expandtab
set ruler

" Allow switching away from unsaved buffers.
set hidden

" Use Google style conventions for C++.
autocmd Filetype cpp setlocal ts=2 sw=2 expandtab colorcolumn=80
autocmd Filetype go setlocal ts=4 sw=4 noexpandtab
" Use Slack style conventions for PHP and JS.
autocmd Filetype php setlocal ts=8 sw=8 noexpandtab
autocmd Filetype javascript setlocal ts=4 sw=4 noexpandtab

autocmd Filetype djinni setlocal ts=2 sw=2 colorcolumn=80
autocmd Filetype cmake setlocal ts=2 sw=2 colorcolumn=80
autocmd Filetype ruby setlocal ts=2 sw=2

" Make backspace work on OSX.
set backspace=indent,eol,start

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

set clipboard=unnamed

" Close a buffer without closing the window.
nnoremap <C-c> :bp\|bd #<CR>
" Switch buffers.
nnoremap <C-l> :bn<CR>
nnoremap <C-h> :bp<CR>

" Map escape to jk and disable escape.
inoremap jk <esc>
inoremap <esc> <nop>

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
