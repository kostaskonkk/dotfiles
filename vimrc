" imap <F5> <Esc>:w<CR>:!clear;python %<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-b> :make<CR>
filetype plugin on "important for nerdcommenter
syntax enable
" UI CONFIG
set number
set relativenumber
set showcmd " show last command at the bottom bar
set cursorline " highligh current line
set showmatch " highlight matching [{()}]
let g:ctrlp_map = '<c-p>' "for ctrlp
let g:ctrlp_cmd = 'CtrlP' "for ctrlp

" SEARCHING
set incsearch  " search as characters are entered
set nohlsearch " Don't continue to highlight searched phrases.
set incsearch  " But do highlight as you type your search.

" BUFFERS
nnoremap gb :ls<CR>:b<Space>

"CODE FOLDING
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za
"ULTISNIPS
set nocompatible
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" COLORS
" colorscheme molokai         " awesome colorscheme
" let g:molokai_original = 1
" let g:rehash256 = 1

" LEADER SHORTCUTS
let mapleader=","     " leader is comma and not \
imap jk <Esc>
nnoremap <leader>u :GundoToggle<CR> " toggle gundo

" ROS INDENTATION
set shiftwidth=2  " Two space indents
set tabstop=2     " Tab key indents two spaces at a time
set expandtab     " Use spaces when the <Tab> key is pressed
set cindent       " Turn on automatic C-code indentation

" SYNTASTIC
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"" SYNTASTIC added by me
"let g:syntastic_cpp_check_header = 1 "check header files 


" Plugin manager junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='mupdf'
let g:vimtex_quickfix_mode=0
set conceallevel=1 "concealment
let g:tex_conceal='abdmg' "concealment
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'|Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'sjl/gundo.vim'
Plug 'vim-syntastic/syntastic'
Plug 'SirVer/ultisnips'|Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
if !has('macunix')
      Plug 'taketwo/vim-ros'
      echo"yo"
endif

call plug#end() " Initialize plugin system
