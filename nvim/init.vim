" general setup
filetype plugin indent on
syntax on

set nocompatible
set encoding=UTF-8
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set number
set relativenumber
set mouse=a
set hlsearch
set incsearch
set hidden
set fdm=indent
set foldlevelstart=99
set ignorecase
set smartcase
set splitbelow
set completeopt-=preview " For No Previews

" plugins
call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/lervag/vimtex' " LaTeX extension
Plug 'tribela/vim-transparent' " Background transperancy

call plug#end()

" colorscheme
colorscheme gruvbox

" key bindings
let mapleader = " "
let maplocalleader = "\\"

" Faster way to exit from insert and visual mode
inoremap <localleader><leader> <ESC>
vnoremap <localleader><leader> <ESC>

" jump to end of line in insert mode
inoremap <C-e> <ESC>A

" center after jump to the last line
nnoremap G Gzz

" Delete to the end of the line
nnoremap <leader>de d$

" open config file in a new tab
nnoremap <leader>ev :e $MYVIMRC<CR>

" reload config file
nnoremap <leader>sv :source $MYVIMRC<CR>

" navigate between buffers
nnoremap <leader><Left> :bprevious<CR>
nnoremap <leader><Right> :bnext<CR>
nnoremap <leader>gg :bfirst<CR>
nnoremap <leader>G :blast<CR>

" switch panes with arrows
nnoremap <C-Left> <C-w>h
nnoremap <C-Right> <C-w>l
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k

" show all buffers and let user choose one 
nnoremap <leader>i :ls<CR>:b<Space>

" show delete current buffer
nnoremap <leader>dd :bd<CR>

" write current buffer
nnoremap <leader>w :write<CR>

" navigate between buffers
nnoremap <leader><tab> <C-^>

" auto commands
augroup exe_code
	autocmd!

	" PYTHON
	" run code
	autocmd FileType python nnoremap <buffer> <localleader>r
				\ :sp<CR> :term python3 %<CR> :startinsert<CR>

	" comment a line
	autocmd FileType python nnoremap <buffer> <localleader>c I#<SPACE><ESC>

	" uncomment a line
	autocmd FileType python nnoremap <buffer> <localleader>x I<DEL><DEL><ESC>

augroup END

" prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" VimTeX
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" Coc shortcuts
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
