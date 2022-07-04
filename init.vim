set nocompatible              " be iMproved, required

filetype plugin indent on    " required
syntax on

set encoding=utf-8
set mouse=a
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
set termguicolors
set scrolloff=10
set splitright
set splitbelow
"set signcolumn
set hidden

" files
set nobackup
set noswapfile
set undofile
set undodir=$VIM/undo

" highlight Normal ctermbg=DarkGrey
" packadd! dracula
" colorscheme dracula

" search commands
set showmatch
set incsearch
set ignorecase
set hlsearch
set shortmess-=

" set highlight Normal ctermbg=None
" set highlight ColorColumn ctermbg=0

set listchars=tab:▸\ ,eol:¬
set colorcolumn=80


" Remaps keys

" Leader Key

let mapleader =" "
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader><F5> :so $VIMRC<CR>
nmap <leader><F5> :e $VIMRC<CR>

nnoremap <leader>v <C-v>
"nnoremap <leader>h <C-w> h 
"nnoremap <leader>j <C-w> j 
"nnoremap <leader>k <C-w> k 
"nnoremap <leader>l <C-w> l 


" Quick exit insert mode
"inoremap jk <ESC>
"inoremap jj <ESC>
"nnoremap j gj
"nnoremap k gk
nnoremap n nzz

nmap <CR> o<ESC>

" remap search
" map <space> /
" map <C-space> ?
map <silent> <leader><cr> :noh<cr>

" Tab manipulation
"nnoremap tn :tabnew<Space>
nnoremap te :tabnext<CR>
nnoremap tn :tabprev<CR>
nnoremap tm :tabfirst<CR>
nnoremap ti :tablast<CR>
nnoremap tq :tabclose<CR>

"vnoremap <A-j> :m '>+1<CR>gv=gv
"vnoremap <A-k> :m '<-2<CR>gv=gv

" Change lines
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Quick jumps
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l
"map <leader>g :Ack 

" provide hjkl movements in Insert mode via the <Alt> modifier key
"inoremap <A-h> <C-o>h
"inoremap <A-j> <C-o>j
"inoremap <A-k> <C-o>k
"inoremap <A-l> <C-o>l

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


"nmap <leader>t <leader><leader>t
"nmap <leader>s <leader><leader>s





" Plugins

call plug#begin()

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'sheerun/vim-polyglot'
    Plug 'ryanoasis/vim-devicons'
    Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
    Plug 'neoclide/coc-pairs'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'frazrepo/vim-rainbow'
    Plug 'scrooloose/nerdtree'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='violet'

let g:rainbow_active = 1

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>




