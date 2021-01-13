syntax on

set noerrorbells
set tabstop=3 softtabstop=4 
set shiftwidth=4
set smartindent
set expandtab
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set backspace=indent,eol,start

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'ycm-core/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'arzg/vim-colors-xcode'
Plug 'lervag/vimtex'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'cocopon/iceberg.vim'
Plug 'preservim/nerdcommenter'

call plug#end()

colorscheme gruvbox

"colorscheme iceberg

"colorscheme xcodedark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/'. 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize = 25

" ag is fast such that CtrlP does not need to cache "
let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :Undotreeshow<CR>
"nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 25<CR>"
nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter Fixit<CR>

" Configuration for vim-latex-preview "

"autocmd Filetype tex setl updatetime=1
"let g:livepreview_previewer = 'open -a okular'

" Configuration for NERDTree "
"autocmd vimenter * NERDTree

" Configuration for Vim-LaTeX/LaTeX-Suite
"-----
"" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
""-----

" Set Hybrid Line Number
:set number relativenumber
:set nu rnu
