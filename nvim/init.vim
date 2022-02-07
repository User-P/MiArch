set autoindent
set cmdheight=2
set clipboard=unnamedplus
set cursorline
set colorcolumn=120
set encoding=utf-8
set hidden
set ignorecase
set mouse=r
set number
set noswapfile
set nobackup
set nowritebackup
set ruler
set relativenumber
set shortmess+=c
set showmatch
set showcmd
set updatetime=3
set sw=4
let NERDTreeQuitOnOpen=1
let mapleader=" "
nnoremap <Leader>z :e $ZSHRC<CR>
nnoremap <Leader>c :e $MYCOCRC<CR>
nnoremap <Leader>e :e $MYVIMRC<CR>

so ~/.config/nvim/telescope.nvim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/coc.vim
so ~/.config/nvim/themes/airline.vim

colorscheme gruvbox-material

nmap <F5> :source ~/.config/nvim/init.vim<CR>
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif
nnoremap <Leader>w :w<CR>
" nnoremap <silent> <right> :vertical resize +5<CR>
" nnoremap <silent> <left> :vertical resize -5<CR>
" nnoremap <silent> <up> :resize +5<CR>
" nnoremap <silent> <down> :resize -5<CR>

if executable('intelephense')
  augroup LspPHPIntelephense
    au!
    au User lsp_setup call lsp#register_server({
        \ 'name': 'intelephense',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'intelephense --stdio']},
                \ 'whitelist': ['php'],
                \ 'initialization_options': {'storagePath': '/tmp/intelephense'},
        \           'workspace_config': {
        \   'intelephense': {
        \     'files': {
        \       'maxSize': 1000000,
        \       'associations': ['*.php', '*.phtml'],
        \       'exclude': [],
        \     },
        \     'completion': {
        \       'insertUseDeclaration': v:true,
        \       'fullyQualifyGlobalConstantsAndFunctions': v:false,
        \       'triggerParameterHints': v:true,
        \       'maxItems': 100,
        \     },
        \     'format': {
        \       'enable': v:true
        \     },
        \     'diagnostic': {
        \       'checkCurrentLine': v:true
        \    }
        \   },
        \ }
        \})
  augroup END
endif

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
let g:clang_format#auto_format = 1
autocmd BufWritePre *.php PrettierAsync
autocmd BufWritePre *.tsx PrettierAsync
autocmd BufWritePre *.ts PrettierAsync
autocmd BufWritePre *.js PrettierAsync
nmap <Leader>s <Plug>(easymotion-s2)
nmap <F8> :TagbarToggle<CR>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>fi :Files<CR>
