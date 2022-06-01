" Vim-Plug plugins. Run :PlugInstall to install!
call plug#begin(stdpath('data') . '/plugged')

" R support
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

" Ayu colorscheme (dark, light, mirage)
Plug 'ayu-theme/ayu-vim'

" Autocomplete and LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Lightline plugin
Plug 'itchyny/lightline.vim'

" Asynchronous lint engine plugin
Plug 'dense-analysis/ale'

" Signify for git
if has('nvim') || has('patch-8.0.902')
    Plug 'mhinz/vim-signify'
else
    Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" NERDTree
Plug 'preservim/nerdtree'

" Nerd Commenter
Plug 'preservim/nerdcommenter'

call plug#end()

" Remap Alt+; to esc 
inoremap <A-;> <ESC>

" Map Ctrl+n to open NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" Set the leader key to be '
let mapleader = "'"

inoremap <A-/> <C-o>:call NERDComment(0,"toggle")<C-m>

" Set colorscheme
set background=dark
set termguicolors
syntax on
let ayucolor="mirage"
colorscheme ayu
set cursorline
set t_Co=256

" Lightline configuration
:let g:lightline = {
        \ 'colorscheme': 'ayu',
        \ }

" Set to basic line numbering
set number

" Set find to ignore case
set ignorecase

" Fix indentation
map <F7> gg=G<C-o><C-o>
set smarttab
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
