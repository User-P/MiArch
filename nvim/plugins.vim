call plug#begin('~/.vim/plugged')

"syntax
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
"
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

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'

Plug 'arnaud-lb/vim-php-namespace'

call plug#end()
