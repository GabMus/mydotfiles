set nocompatible

execute pathogen#infect()

set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftround
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch

set undolevels=1000
set title

if &t_Co >= 256 || has("gui_running")
	colorscheme one
endif

syntax on
filetype off
filetype plugin indent on
call vundle#rc()
autocmd filetype python set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

set mouse=a
