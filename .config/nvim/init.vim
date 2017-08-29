call plug#begin('~/.config/nvim/plugged')

Plug 'bronson/vim-trailing-whitespace'
"Plug 'chriskempson/base16-vim'
Plug 'ervandew/supertab'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'jiangmiao/auto-pairs'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'lervag/vimtex'
Plug 'mhartington/oceanic-next'
Plug 'mhinz/vim-startify'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'

call plug#end()

" {{{ Plugin settings

" Setup vim-airline
let g:airline_section=''
let g:airline_detect_paste=1
let g:airline_powerline_fonts=1
""let g:airline#extensions#tabline#enabled=1
""let g:airline#extensions#tabline#show_buffers=0
""let g:airline#extensions#tabline#tab_min_count=2
let g:airline_theme='oceanicnext'

let g:airline_left_sep = '▒'
let g:airline_right_sep = '▒'
let g:airline_left_alt_sep = '▏'
let g:airline_right_alt_sep = '▕'


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


" Startify
let g:startify_list_order = [
            \ ['   Files:'], 'files',
            \ ['   Current Directory:'], 'dir',
            \ ['   Sessions:'], 'sessions',
            \ ['   Bookmarks:'], 'bookmarks',
            \ ['   Commands:'], 'commands',
            \ ]


" }}} Plugin settings

" Some configurations
set encoding=utf-8
set termguicolors
set cursorline
set backspace=indent,eol,start
set autowrite
set autoread
set showmatch
set shortmess=atToOI
set mouse=a
"syntax on


" Syntax highlighting
colorscheme OceanicNext
""highlight clear LineNr


" Title and hidden buffers
set title
set hidden


" Show line length
set textwidth=79
set nowrap
"set colorcolumn=80
"highlight ColorColumn ctermbg=233


" Auto remove all trailing whitespace on :w
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

