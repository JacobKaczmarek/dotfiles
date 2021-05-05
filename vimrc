" vim:fdm=marker

" Editor {{{
filetype plugin indent on
syntax on
set hidden
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab autoindent smartindent
set nu relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set updatetime=300
set wildmode=longest,list,full
set splitbelow splitright
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
" }}}
" Plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'neoclide/coc.nvim'
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'w0rp/ale'
Plug 'posva/vim-vue'
Plug 'kiteco/vim-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'

call plug#end()
" }}}
" Colors{{{
" colorscheme dracula
" set background=dark
let g:airline_theme='tomorrow'"
"}}}
" Plugins config {{{
" RipGrep
if executable('rg')
    let g:rg_derive_root='true'
endif

" Ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0

let g:netrw_borwse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

" ALE (linting)
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\}

let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\   'javascript': [],
\   'python': ['black', 'isort'],
\}
let g:ale_fix_on_save = 1

" Kite (autocomplete)
let g:kite_supported_languages = ['python', 'javascript']
let g:kite_tab_complete=1
let g:kite_auto_complete=1

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,vue EmmetInstall
let g:user_emmet_leader_key=','
"}}}
" Shortcuts{{{
let mapleader = " "

" coc.nvim
nmap <silent>gr <Plug>(coc-references)
nmap <silent>gd <Plug>(coc-definition)

" Splits movement
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Undotree
nnoremap <leader>u :UndotreeShow<CR>

" project search
nnoremap <leader>ps :Rg<SPACE>

" ifugitive
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //2
nmap <leader>gl :diffget //3

" NerdTree
map <C-n> :NERDTreeToggle<CR>"
"}}}
