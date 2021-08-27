set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
set encoding=utf-8
set cursorline
set wildmenu
set showcmd
set showmode
set noerrorbells
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set smartindent
set number relativenumber
set nowrap
set expandtab
set smartcase
set backspace=indent,eol,start
set ruler
set laststatus=2
set cmdheight=2
set textwidth=70

" files
set nobackup
set noswapfile
set undofile
set undodir=$VIM/undo

" highlight Normal ctermbg=DarkGrey
" packadd! dracula
colorscheme dracula

" search commands
set showmatch
set incsearch
set ignorecase
set hlsearch
set shortmess-=

set highlight Normal ctermbg=None

set listchars=tab:▸\ ,eol:¬

set colorcolumn=80
set highlight ColorColumn ctermbg=0

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'ctrlpvim/ctrlp.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

let NERDTreeShowHidden=1

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'

let g:airline#extensions#tagbar#enabled=1
let g:airline#extensions#tagbar#flags='f'
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#le#enabled=1

 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Remaps
"
" Leader Key
let mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader><leader>q :q!<cr>
nmap <leader><F5> :so $VIMRC<CR>
nmap <leader><F5> :e $VIMRC<CR>

nnoremap <leader>v <C-v>
nnoremap <leader>h <C-w> h 
nnoremap <leader>j <C-w> j 
nnoremap <leader>k <C-w> k 
nnoremap <leader>l <C-w> l 


" Quick exit insert mode
inoremap jk <ESC>
inoremap jj <ESC>
nnoremap j gj
nnoremap k gk
nnoremap n nzz

nmap <CR> o<ESC>

" remap search
map <space> /
map <C-space> ?
map <silent> <leader><cr> :noh<cr>

" Tab manipulation
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap tq :tabquit<CR>

vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Change lines
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Quick jumps
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>g :Ack 

" provide hjkl movements in Insert mode via the <Alt> modifier key
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>

cno $q <C-\>eDeleteTillSlash()<cr>

" bash like keys for comand line
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
