" ~/.config/nvim/init.vim
" -------------------------------------
" neovim configuration file
" vim: fdm=marker:sw=2:sts=2:et



" Plugin definitions {{{
call plug#begin('~/.config/nvim/plugged')

" Language support
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'cespare/vim-toml', { 'for': 'toml' }
" Plug 'shougo/deoplete.nvim'
" Plug 'vimwiki/vimwiki'
" Plug 'tpope/vim-markdown'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'machakann/vim-highlightedyank'
Plug 'ntpeters/vim-better-whitespace'

Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'

Plug 'itchyny/lightline.vim'

call plug#end()

" }}}
" Plugin settings {{{

" BetterWhitespace config
let g:strip_whitespace_on_save=1
let g:show_spaces_that_precede_tabs=1


" NerdCommenter config
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1
let g:NERDDefaultAlign='left'
let g:NERDCommentEmptyLines=1
let g:NERDTrimTrailingWhitespace=1


" EasyAlign mappings
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)


" " netrw configuration
" let g:netrw_browse_split = 0
" let g:netrw_altfile = 1


" Highlighted yank (-1 for persistent)
let g:highlightedyank_highlight_duration = 150


" Lightline
let g:lightline = {
      \ 'colorscheme': 'lena',
      \ }

let g:lightline.active = {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'filename', 'readonly', 'modified' ],
      \           [ 'fugitive' ] ],
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'filetype' ] ]
      \ }

let g:lightline.inactive = {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'filename', 'readonly', 'modified' ],
      \           [ 'fugitive' ] ],
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'filetype' ] ]
      \ }

let g:lightline.component = {
      \ 'lineinfo': '%3l:%-3v',
      \ }

let g:lightline.component_function = {
      \ 'readonly': 'LightlineReadonly',
      \ 'fugitive': 'LightlineFugitive'
      \ }

let g:lightline.mode_map = {
      \ 'n' : '♠',
      \ 'i' : '♦',
      \ 'R' : '♣',
      \ 'v' : '♥',
      \ 'V' : '♥',
      \ "\<C-v>": '♥',
      \ 'c' : '♤',
      \ 's' : 'S',
      \ 'S' : 'S-LINE',
      \ "\<C-s>": 'S-BLOCK',
      \ 't': 'T',
      \ }

let g:lightline.separator = {
      \ 'left': '', 'right': ''
      \ }
let g:lightline.subseparator = {
      \ 'left': '', 'right': ''
      \ }

let g:lightline.enable = {
      \ 'statusline': 1
      \ }


function! LightlineReadonly()
  return &readonly ? '⊘' : ''
endfunction

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

" }}}
" General Vim settings {{{

" Line Numbers
set number
set numberwidth=4


" Scrolling
set scrolloff=4
set sidescrolloff=16
set sidescroll=1


" Highlight matching pairs of brackets. Use the '%' character to jump between them.
" set matchpairs+=<:>

" Use system clipboard
set clipboard=unnamedplus

" Remove timeout for partially typed commands
set notimeout


" Indentation
set smarttab
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4


"set smartindent
set autoindent
"set cindent


" Fix broken terminal cursor
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0


set nocompatible
filetype plugin indent on


" Allow switching between buffers without saving
set hidden


" Mouse support
set mouse=a


"Case insensitive searching
set ignorecase


"Will automatically switch to case sensitive if you use any capitals
set smartcase


" Substitute live preview
set inccommand=nosplit


" If lightline/airline is enabled, don't show mode under it
set noshowmode


" Clear search highlighting with Escape key
nnoremap <silent><esc> :noh<return><esc>


" if (has('termguicolors'))
"   set termguicolors
" endif


" Colorscheme
colorscheme colorz

" }}}
" Key mapping {{{
" Beginning and end of line
imap <C-a> <home>
imap <C-e> <end>
cmap <C-a> <home>
cmap <C-e> <end>

" Window Movement
nmap <M-h> <C-w>h
nmap <M-j> <C-w>j
nmap <M-k> <C-w>k
nmap <M-l> <C-w>l

" Resizing
nmap <C-M-H> 2<C-w><
nmap <C-M-L> 2<C-w>>
nmap <C-M-K> <C-w>-
nmap <C-M-J> <C-w>+

" Insert mode movement
imap <M-h> <left>
imap <M-j> <down>
imap <M-k> <up>
imap <M-l> <right>

" Change <leader> bind from default \
nnoremap <space> <nop>
let mapleader=" "

" Make ci( work like quotes do
function! New_cib()
  if search("(","bn") == line(".")
    sil exe "normal! f)ci("
    sil exe "normal! l"
    startinsert
  else
    sil exe "normal! f(ci("
    sil exe "normal! l"
    startinsert
  endif
endfunction

" And for curly brackets
function! New_ciB()
  if search("{","bn") == line(".")
    sil exe "normal! f}ci{"
    sil exe "normal! l"
    startinsert
  else
    sil exe "normal! f{ci{"
    sil exe "normal! l"
    startinsert
  endif
endfunction

nnoremap ci( :call New_cib()<CR>
nnoremap cib :call New_cib()<CR>
nnoremap ci{ :call New_ciB()<CR>
nnoremap ciB :call New_ciB()<CR>

" Alt-m for creating a new line in insert mode
imap <M-m> <esc>o

" }}}
" Restore last cursor position and marks on open {{{
" au BufReadPost *
"          \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
"          \ |   exe "normal! g`\""
"          \ | endif

" }}}

