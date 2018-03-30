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

call plug#end()

" Airline (powerline)
let g:airline_powerline_fonts = 1
let g:airline_theme='violet'

colorscheme  space-vim-dark

set mouse=a
set number
