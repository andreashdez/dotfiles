" ~/.config/nvim/init.vim
" -------------------------------------
" neovim configuration file



call plug#begin('~/.config/nvim/plugged')

" Language support
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Plug 'lervag/vimtex'

" Easier code editing
Plug 'ntpeters/vim-better-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'

" Some enhancements
Plug 'scrooloose/nerdtree'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'w0rp/ale'
Plug 'junegunn/vim-easy-align'
Plug '/usr/bin/fzf'

" Look and feel
Plug 'vim-airline/vim-airline'
Plug 'dylanaraps/wal.vim'
Plug 'junegunn/goyo.vim'

call plug#end()


" -------------------------------------
" Plugin settings

" VimAirline config
let g:airline_section         =''
let g:airline_detect_paste    =1
let g:airline_powerline_fonts =1
let g:airline_left_sep        =''
let g:airline_right_sep       =''
let g:airline_left_alt_sep    =''
let g:airline_right_alt_sep   =''
let g:airline_section_z       =airline#section#create(['%3l', ':%-3v', ' ┊ %3p%%'])
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'


" NerdCommenter config
let g:NERDSpaceDelims            =1
let g:NERDCompactSexyComs        =1
let g:NERDDefaultAlign           ='left'
let g:NERDCommentEmptyLines      =1
let g:NERDTrimTrailingWhitespace =1


" NerdTree toggle
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "⭔",
    \ "Staged"    : "✚",
    \ "Untracked" : "⭒",
    \ "Renamed"   : "⮕",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✘",
    \ "Clean"     : "✔︎",
    \ "Ignored"   : "i",
    \ "Unknown"   : "?"
    \ }


" BetterWhitespace config
let g:strip_whitespace_on_save      =1
let g:show_spaces_that_precede_tabs =1


" EasyAlign mappings
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" -------------------------------------
" NeoVim settings

" Syntax highlighting
colorscheme wal


" Some configurations
set autowrite
set shortmess  =oOstTI
set mouse      =a
set noshowmode


" Remove underlining (decorations)
hi CursorLine cterm=NONE


" Line Numbers
set number
set numberwidth =3


" Show line length
set linebreak
set formatoptions -=t


" Indent configuration
set shiftwidth =4
set tabstop    =4
set cindent


" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile


" Nicer scrolling
set scrolloff     =4
set sidescrolloff =16
set sidescroll    =1


" Tab indents blocks of text in visual mode
vmap <TAB> >gv
vmap <BS>  <gv


" hjkl-movement between rows when soft wrapping
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk


" Move between buffers
nnoremap gb :buffers<CR>:buffer<Space>
nnoremap K :bp<CR>
nnoremap J :bn<CR>


" Move between splits
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>


" Open splits after current split
set splitbelow
set splitright

