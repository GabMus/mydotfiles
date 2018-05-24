" Plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'liuchengxu/space-vim-dark'

Plug 'tpope/vim-surround'
" Plug 'valloric/youcompleteme'
Plug 'scrooloose/syntastic'

" deoplete.nvim for autocompletion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'scrooloose/nerdtree'

Plug 'petRUShka/vim-opencl'

call plug#end()

" Airline (powerline)
let g:airline_powerline_fonts = 1
let g:airline_theme='violet'

colorscheme  space-vim-dark

set mouse=a
set number

" Automatically open NERDTree
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
" Close NERDTree if it's the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
