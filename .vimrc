filetype plugin on "important for nerdcommenter 

syntax enable 
set nocompatible " required by Ultisnips
set hidden
set number 
set undofile "Maintain undo history between sessions 
set undodir=~/.vim/undo
set relativenumber 
set showcmd " show last command at the bottom bar 
set cursorline " highlight current line 
set showmatch " highlight matching [{()}] 
let g:ctrlp_map = '<c-p>' "for ctrlp 
let g:ctrlp_cmd = 'CtrlP' "for ctrlp 

 " SEARCHING 
 set incsearch  " search as characters are entered 
 set nohlsearch " Don't continue to highlight searched phrases  
 set incsearch  " But do highlight as you type your search. 
 
"CODE FOLDING
"nnoremap <space> za

"[U]LTISNIPS
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<leader>tab>"
let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"let g:UltiSnipsEditSplit="vertical" " :UltiSnipsEdit splits the window.

if has('macunix')
	let g:UltiSnipsSnippetDirectories = ['$HOME/ultisnips', 'UltiSnips']
	" let g:vimtex_view_method='skim'
else
	let g:UltiSnipsSnippetDirectories = ['/home/kostas/ultisnips', 'UltiSnips']
	let g:vimtex_view_method='mupdf'
endif

" [C]OLOURS
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
"colorscheme molokai         " poppy  colorscheme
"let g:molokai_original = 1
"let g:rehash256 = 1

colorscheme gruvbox         " awesome colorscheme
set bg=dark
let g:gruvbox_dark = 'hard'
let g:gruvbox_light= 'hard'

"[L]EADER SHORTCUTS
let mapleader=" "     " leader is space and not \
nnoremap <leader>b   :ls<CR>:b<Space>
nnoremap <leader>u   :GundoToggle<CR> " toggle gundo
nnoremap <leader>t   :TagbarToggle<CR> " toggle tagbar
nnoremap <leader>w   :w<CR>
nnoremap <leader>a   :wa<CR>
nnoremap <leader>q   :q<CR>
nnoremap <leader>x   :x<CR>
nnoremap <leader>s :!clear && shellcheck %<CR>
nnoremap <leader><leader> :call NERDComment(0,"toggle")<CR>
"let g:NERDCommenterToggle = '<leader>c'

nnoremap <Leader>y "+y
nnoremap <Leader>d "+d
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
nnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
nnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>
vnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>
vnoremap <leader><leader> :call NERDComment(0,"toggle")<CR>
map <leader>o :setlocal spell! spelllang=en_uk<CR> " 'o' for 'orthography'
map <C-n> :NERDTreeToggle<CR> 

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nnoremap <cr> <c-w>w

" [I]MAP
imap jk <Esc>

" ROS INDENTATION
au BufNewFile,BufRead *.cpp,*.h,*.hpp
     \ set shiftwidth=2  " Two space indents
     \ set tabstop=2     " Tab key indents two spaces at a time
     \ set expandtab     " Use spaces when the <Tab> key is pressed
     \ set cindent       " Turn on automatic C-code indentation
     \ set foldmethod=syntax
     \ set foldlevel=99

" I should add badwhitespace also to cpp
"highlight badwhitespace ctermbg=red guibg=red

au BufNewFile,BufRead *.py
     \ set tabstop=4 |
     \ set softtabstop=4 |
     \ set shiftwidth=4 |
     \ set textwidth=79 |
     \ set expandtab |
     \ set autoindent |
     \ set fileformat=unix | "\ match BadWhitespace /\s\+$/


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

""""""""" [Y]CM 
let g:ycm_server_python_interpreter="/usr/bin/python"

""""""""" La[T]ex vimtex 
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg' "concealment
set conceallevel=1 "concealment
au BufNewFile,BufRead *.tex
     \ set wrap linebreak nolist |
     "\ set spell spelllang=en_gb 

""""""""" [P]lugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'|Plug 'scrooloose/nerdtree'
"Plug 'junegunn/vim-peekaboo'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'sjl/gundo.vim'
"Plug 'vim-syntastic/syntastic'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'SirVer/ultisnips'|Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
Plug 'ycm-core/YouCompleteMe'
if !has('macunix')
      Plug 'taketwo/vim-ros'
endif

call plug#end() " Initialize plugin system
