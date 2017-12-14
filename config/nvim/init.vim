" ~/.config/nvim/init.vim
" -------------------------------------
" neovim configuration file



call plug#begin('~/.config/nvim/plugged')

Plug 'bronson/vim-trailing-whitespace'
Plug 'dylanaraps/wal.vim'
Plug 'ervandew/supertab'
"Plug 'itchyny/lightline.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'jiangmiao/auto-pairs'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'lervag/vimtex'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'

call plug#end()

" {{{ Plugin settings

"" Setup vim-airline
let g:airline_section=''
"let g:airline_extensions=[]
let g:airline_detect_paste=1
let g:airline_powerline_fonts=1
let g:airline_theme='wal'

let g:airline_left_sep = '▒'
let g:airline_right_sep = '▒'
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''


" Setup lightline
"let g:lightline={'colorscheme': 'powerline'}


" Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlage()}
set statusline+=%*


" Syntastic configuration
let g:syntastic_always_populate_loc_list=1
""let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0


" NerdTree toggle
map <Space><Space> :NERDTreeTabsToggle<CR>

" }}} Plugin settings


" Syntax highlighting
syntax on
colorscheme wal


" Some configurations
set encoding=utf-8
set backspace=indent,eol,start
set autowrite
set autoread
set showmatch
set shortmess=atToOI
set mouse=a


" Title and hidden buffers
set title
set hidden


" Show cursor line
set cursorline
hi CursorLine cterm=NONE


" Show line length
set textwidth=79
set wrap
set linebreak
set formatoptions-=t


" Auto remove all trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e


" Line Numbers
set number
set numberwidth=3


" TAB configuration
set expandtab
set shiftwidth=4
set softtabstop=4
set shiftround


" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile


" Better scrolling
set scrolloff=4
set sidescrolloff=16
set sidescroll=1


" Move between buffers
nnoremap <C-k> :bp<CR>
nnoremap <C-j> :bn<CR>

