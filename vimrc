"""" Basics 
set nocompatible
syntax on
set nowrap
set encoding=utf8

let mapleader = ","

"""" Vundle configuration

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" utility plugins
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'itchyny/lightline.vim'

" Generic programming support
Plugin 'vim-syntastic/syntastic'

" Git Support
Plugin 'tpope/vim-fugitive'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'

" Solidity support
Plugin 'tomlion/vim-solidity'

"Kotlin support
Plugin 'udalov/kotlin-vim'

" Theme && Interface


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""" General configuration section

" Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Lightline configuration
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }


