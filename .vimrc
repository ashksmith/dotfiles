set nocompatible

" -- General Settins --
set backspace=indent,eol,start " set backspace to work line normal
set ruler " show cursor position all times
set number " line number
set showcmd " display incomplete commands
set incsearch " do incrememntal searching
set hlsearch " search highlighting

syntax on " Syntax highlighting

" If caps lock is on, or mistyped, these commands will still work
command! WQ wq
command! Wq wq
command! Wqa wqa
command! W w
command! Q q

filetype off

" turn on mouse if able
if has ('mouse')
	set mouse=a
endif

" Bling
filetype plugin indent on " Enable filetypes
set laststatus=2 " Alwayas show status bar, needed for airline - bug with splits.
let g:airline_theme='light' "Airline theme

" -- Plugins --
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree' " NERDtree
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic' " Syntax checker
Plugin 'bronson/vim-trailing-whitespace' " Highlights whitespac, :FixWhitespace to remove it
Plugin 'kien/ctrlp.vim'
Plugin 'adnasa/base16-colors'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
" ----- Other text editing features -----------------------------------
Plugin 'Raimondi/delimitMate'

call vundle#end()

" -- Plugin settings --
" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END
