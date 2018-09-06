call plug#begin('~/.vim/autoload')
Plug '/usr/local/opt/fzf'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'solarnz/whitespace.vim'

" jsx formatting
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" autoclose
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" personal settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" misc settings
set mouse=v
set clipboard=unnamedplus
set paste

" tab settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" visual settings
set nowrap
set number
set cursorline
set autoindent
set splitbelow
set splitright
set hlsearch

" fold settings
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za

let g:whitespace = 1

let g:netrw_liststyle = 3
let g:netrw_banner = 0

" lightline settings
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
