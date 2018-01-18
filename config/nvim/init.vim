" ~/.config/nvim/init.vim
" -------------------------------------
" neovim configuration file



call plug#begin('~/.config/nvim/plugged')

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'ntpeters/vim-better-whitespace'
Plug 'dylanaraps/wal.vim'
"Plug 'ervandew/supertab'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'

call plug#end()

" {{{ Plugin settings

""" Setup vim-airline
let g:airline_section=''
let g:airline_detect_paste=1
let g:airline_powerline_fonts=1
let g:airline_left_sep='▒'
let g:airline_right_sep='▒'
let g:airline_left_alt_sep=''
let g:airline_right_alt_sep=''
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_section_z=airline#section#create(['%3l', ':%-3v', ' ┊ %3p%%'])


" Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlage()}
set statusline+=%*


" Syntastic configuration
let g:syntastic_always_populate_loc_list=1
""let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0


" NerdCommenter
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1
let g:NERDDefaultAlign='left'
let g:NERDCommentEmptyLines=1
let g:NERDTrimTrailingWhitespace=1


" NerdTree toggle
map <C-n> :NERDTreeToggle<CR>

" }}} Plugin settings


" Syntax highlighting
colorscheme wal


" Some configurations
set encoding=utf-8
set autowrite
set autoread
set showmatch
set shortmess=atToOI
set mouse=a
set noshowmode


" Title and hidden buffers
"set title
"set hidden


" Show cursor line
"set cursorline
hi CursorLine cterm=NONE


" Line Numbers
set number
set numberwidth=3


" Show line length
set textwidth=79
set wrap
set linebreak
set formatoptions-=t


" Auto remove all trailing whitespace on save
autocmd BufEnter * EnableStripWhitespaceOnSave


" Indent configuration
set expandtab
set shiftwidth=4
set softtabstop=4
set shiftround
set breakindent


" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile


" Nicer scrolling
set scrolloff=4
set sidescrolloff=16
set sidescroll=1


" Tab indents blocks of text in visual mode
vmap <TAB> >gv
vmap <BS> <gv


" hjkl-movement between rows when soft wrapping
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk


" Easily move to start/end of line
nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $


" Move between buffers
nnoremap <C-k> :bp<CR>
nnoremap <C-j> :bn<CR>

