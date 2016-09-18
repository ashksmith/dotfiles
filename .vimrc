syntax on
set number
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
"NERDtree
Plugin 'scrooloose/nerdtree'
"Syntax checker
Plugin 'scrooloose/syntastic'
"Highlights whitespac, :FixWhitespace to remove it
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kien/ctrlp.vim'
"Plugin 'vim-scripts/c.vim'
Plugin 'adnasa/base16-colors'
Plugin 'vim-airline/vim-airline-themes'


call vundle#end()
filetype plugin indent on
set laststatus=2 "needed for airline, bug with splits
let g:airline_theme='light'
