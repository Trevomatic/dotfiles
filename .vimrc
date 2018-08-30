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
set clipboard=unnamed
set mouse=a

" tab settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftwidth=4

" visual settings
set nowrap
set number
set cursorline
set autoindent
set splitbelow
set splitright

" fold settings
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za


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
