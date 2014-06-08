set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim

"do not know why vundler does not configure autoload for ack
set rtp+=~/.vim/bundle/ack.vim/autoload

call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" My Plugins here:
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-surround'

" colors
Plugin 'altercation/vim-colors-solarized'

" vim-scripts repos
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

"Plugin 'mileszs/ack.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'tmhedberg/matchit'
Plugin 'bronson/vim-trailing-whitespace'

" file search
Plugin 'kien/ctrlp.vim'
Plugin 'FuzzyFinder'

"indentation - helpful for slim
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kchmck/vim-coffee-script'

Plugin 'vim-scripts/taglist.vim'

call vundle#end()
filetype plugin indent on     " required!

"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..
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

Bundle 'rking/ag.vim'
