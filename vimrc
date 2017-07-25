"""" Basics 
set nocompatible
syntax on
set nowrap
set encoding=utf8

"""" Vundle configuration

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required
filetype plugin indent on    " required
