set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
"Bundle 'tpope/vim-surround'


" colors
Bundle 'altercation/vim-colors-solarized'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'

Bundle 'mileszs/ack.vim'
Bundle 'msanders/snipmate.vim'

" non github repos

filetype plugin indent on     " required!
set autoindent

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"



syntax on 
" filetype plugin indent on


" Source initialization files
" " ---------------------------
"
runtime! init/**.vim
"

" " Machine-local vim settings - keep this at the end
" " --------------------------
silent! source ~/.vimrc.local

