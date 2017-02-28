call plug#begin('~/.config/nvim/plugged')

Plug 'bronson/vim-trailing-whitespace'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'jiangmiao/auto-pairs'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'morhetz/gruvbox'
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
let g:airline#extensions#tabline#enabled=1


" Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlage()}
set statusline+=%*


" Syntastic configuration
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0


" NerdTree toggle
nmap <silent><C-s> :NERDTreeTabsToggle<CR>


" Gruvbox configuration
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_improved_warnings=1

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


" Syntax highlighting
colorscheme gruvbox
set background=dark


" Title and hidden buffers
set title
set hidden


" Show line length
set textwidth=79
set nowrap
set colorcolumn=80
highlight ColorColumn ctermbg=233


" Auto remove all trailing whitespace on :w
autocmd BufWritePre * :%s/\s\+$//e


" Line Numbers
set number
set numberwidth=5


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


" HTML editing
set matchpairs+=<:>


" Move between buffers
nnoremap <C-k> :bp<CR>
nnoremap <C-j> :bn<CR>

