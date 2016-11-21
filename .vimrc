
" ======================================
" Vimrc for Web Developers
" author: walnutzhang  https://github.com/walnutzhang
" version: 1.1, 2016-10-20
" =======================================

" ======================================
" Plugin Management Powered by vim-plug 
" ======================================

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim', {'for': ['html', 'css']}
Plug 'ternjs/tern_for_vim', {'for': 'javascript'}
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'javascript'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'mxw/vim-jsx'

Plug 'wakatime/vim-wakatime'
Plug 'mhartington/oceanic-next' " theme
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

" ======================================
" Common Settings
" =======================================

set t_Co=256
set ts=2
set shiftwidth=2
set expandtab
set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
set number
set tabstop=2
set fileencodings=utf-8,gb18030,gbk,gb2312
set hidden
set cursorline
set clipboard=unnamed   " enable copy text from vim to other software in OS X
filetype plugin indent on
syntax on

" for vim 8
if (has("termguicolors"))
 set termguicolors
endif

colorscheme OceanicNext

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

let g:indentLine_setColors = 0

" set swapfile location
set directory^=$HOME/.vim/temp//

" set relative line numbers to make moving around easily
set relativenumber number
set conceallevel=0

" ======================================
" Custom Keymaps 
" ======================================

:imap jk <Esc>
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv

" Ack and Ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" Emmet 
let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_mode='a'

" ctrlp
let g:ctrlp_custom_ignore = '\v[\/](node_modules)|(\.(swp|ico|git|svn))$'

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#fnamecollapse = 0

" User \1 to select buffer with index number 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-c> :NERDTreeFind<CR>
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowHidden=1
