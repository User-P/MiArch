set number
set mouse=a
set clipboard=unnamed
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set relativenumber
set ruler
set cursorline


call plug#begin('~/.vim/plugged')

"syntax
Plug 'sheerun/vim-polyglot'

"Themes
Plug 'morhetz/gruvbox'

"typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

"tmux
Plug 'christoomey/vim-tmux-navigator'

"autocomplete
"Plug 'sirver/ultisnips'

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'


call plug#end()

colorscheme gruvbox
let NERDTreeQuitOnOpen=1
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)

nmap <Leader>nt :NERDTreeFind<CR>

