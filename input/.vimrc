set nocompatible              " required
filetype off                  " required
language en_US.UTF-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-commentary'
Plugin 'sheerun/vim-polyglot'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'

Plugin 'joshdick/onedark.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'junegunn/seoul256.vim'

Plugin 'itchyny/lightline.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let $VIRTUAL_ENV = $CONDA_PREFIX

colorscheme onedark
" colorscheme gruvbox
" colorscheme molokai
" colorscheme PaperColor
" colorscheme seoul256-light

" colorscheme solarized
" let g:solarized_termcolors=256
" set background=light
" syntax enable

syntax on

set nu
set encoding=utf-8
set clipboard=unnamed
set cursorline

" set tabstop=2
" set shiftwidth=2
" set expandtab

" Lihgtline
set laststatus=2
set noshowmode

set splitbelow
set splitright

"Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Jedi-vim 
let g:jedi#show_call_signatures = 0
