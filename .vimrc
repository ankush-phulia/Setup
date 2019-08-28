set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-speeddating'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'

Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" particular settings
set number
set hlsearch
set undofile undodir=~/.vim/undodir
set tabstop=4 shiftwidth=4 smarttab expandtab
set title
set titleold=

" commenting
noremap <C-o> :NERDTreeToggle<CR>
vmap // <leader>c<space>
nmap // <leader>c<space> 

" indenting
vnoremap <Tab> >
vnoremap <S-Tab> <

" moving lines
nnoremap <C-S-Up> :m .-2<CR>
nnoremap <C-S-Down> :m .+1<CR>
vnoremap <C-S-Up> :m '<-2<CR>gv
vnoremap <C-S-Down> :m '>+1<CR>gv
inoremap <C-S-Up> <Esc>:m .-2<CR>gi
inoremap <C-S-Down> <Esc>:m .+1<CR>gi

" paste mode toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
