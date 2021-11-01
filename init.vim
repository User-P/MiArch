set number
set mouse=r
set clipboard=unnamedplus
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set relativenumber
set ruler
set cursorline
set autoindent
set shiftwidth=2
set smarttab
set noswapfile
set ignorecase
set colorcolumn=120

call plug#begin('~/.vim/plugged')

"syntax
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier', {'do': 'yarn install','for': ['php']}
"Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
"typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

"tmux
Plug 'christoomey/vim-tmux-navigator'

"autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch':'release'}

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/tagbar'
Plug 'tpope/vim-commentary'

call plug#end()

colorscheme gruvbox-material
let NERDTreeQuitOnOpen=1
let mapleader=" "

nmap <F5> :source %<CR>
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

nnoremap <Leader>w :w<CR>
" nnoremap <silent> <right> :vertical resize +5<CR>
" nnoremap <silent> <left> :vertical resize -5<CR>
" nnoremap <silent> <up> :resize +5<CR>
" nnoremap <silent> <down> :resize -5<CR>
nnoremap <Leader>e :e $MYVIMRC<CR>
nnoremap <Leader>z :e $ZSHRC<CR>

nmap <Leader>s <Plug>(easymotion-s2)
nmap <F8> :TagbarToggle<CR>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>f :Files<CR>

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
let g:clang_format#auto_format = 1
autocmd BufWritePre *.php PrettierAsync
