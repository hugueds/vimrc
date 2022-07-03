set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
set encoding=utf-8
set splitright splitbelow
set mouse=a
set cursorline
set wildmenu
set showcmd
set showmode
set noerrorbells
set smartindent
set number relativenumber
set nowrap
set expandtab
set smartcase
set backspace=indent,eol,start
set ruler

set tabstop=4 
set softtabstop=4
set shiftwidth=4
set scrolloff=8
set laststatus=2
set cmdheight=2
set textwidth=70

" files
set nobackup
set noswapfile
set undofile
" set undodir=$VIM/undo

" packadd! dracula
" colorscheme dracula

" search commands
set showmatch
set incsearch
set ignorecase
set hlsearch
set shortmess+=c
set hidden

set termguicolors
" colorscheme desert

highlight ColorColumn ctermbg=Yellow cterm=bold
highlight ColorLine ctermbg=Yellow cterm=bold 

set colorcolumn=80
set signcolumn=yes

set listchars=tab:▸\ ,eol:¬


" Remaps keys

" Leader Key
let mapleader =" " 
nmap <leader>w :w!<cr>
nmap <leader><leader>q :q!<cr>
nmap <leader><F5> :so $VIMRC<CR>
nmap <leader><F5> :e $VIMRC<CR>

nnoremap <leader>v <C-v>
nnoremap <leader>h <C-w> h 
nnoremap <leader>j <C-w> j 
nnoremap <leader>k <C-w> k 
nnoremap <leader>l <C-w> l 

nnoremap <leader>rp :resize 100<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

nnoremap <leader>h :split<Space>
nnoremap <leader>h :split<Space>
nnoremap <leader>vv :vsplit<Space>


" Quick exit insert mode
inoremap jk <ESC>
inoremap jj <ESC>
nnoremap j gj
nnoremap k gk
nnoremap n nzz
nnoremap gl $
nnoremap gh 0

nmap <CR> o<ESC>

" remap search
" map <space> /
" map <C-space> ?
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


" change the source depending on linux/windows
source $HOME/.config/nvim/vim-plug/plugins.vim



