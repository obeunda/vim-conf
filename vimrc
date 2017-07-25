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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/goyo.vim'

" Generic programming support
Plugin 'vim-syntastic/syntastic'
Plugin 'tomtom/tcomment_vim'

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

" Colorscheme
Plugin 'sjl/badwolf'
Plugin 'reedes/vim-colors-pencil'
Plugin 'dikiaap/minimalist'


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

colorscheme minimalist
set background=light

" search
set ignorecase		                " Ignore case in search
set incsearch                           " search as characters are entered
set hlsearch                            " Highlights all search matches at the same time



" Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

noremap <C-c> :NERDTreeToggle<CR>
noremap <C-t> :TagbarToggle<CR>

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

" Functions
function! s:goyo_enter()
    colorscheme pencil
endfunction

function! s:goyo_leave()
    colorscheme minimalist
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

