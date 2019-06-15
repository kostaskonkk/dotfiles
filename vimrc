map <C-n> :NERDTreeToggle<CR> 
map <C-b> :make<CR> 
filetype plugin on "important for nerdcommenter 

syntax enable 
 set number 
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
set foldmethod=syntax
set foldlevel=99
"nnoremap <space> za

"[U]LTISNIPS
set nocompatible
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical" " :UltiSnipsEdit splits the window.

if has('macunix')
	let g:UltiSnipsSnippetDirectories = ['/Users/kostas/.dotfiles/ultisnips', 'UltiSnips']
	" let g:vimtex_view_method='skim'
else
	let g:UltiSnipsSnippetDirectories = ['/home/kostas/.dotfiles/ultisnips', 'UltiSnips']
	let g:vimtex_view_method='mupdf'
endif

" [C]OLOURS
set termguicolors
colorscheme molokai         " poppy  colorscheme
"let g:molokai_original = 1
"let g:rehash256 = 1

colorscheme gruvbox         " awesome colorscheme
let g:gruvbox_dark = 'hard'
let g:gruvbox_light= 'hard'
"let g:gruvbox_(option) = '(value)'

"[L]EADER SHORTCUTS
let mapleader=" "     " leader is space and not \
nnoremap <leader>b   :ls<CR>:b<Space>
nnoremap <leader>u   :GundoToggle<CR> " toggle gundo
nnoremap <leader>t   :TagbarToggle<CR> " toggle tagbar
nnoremap <leader>w   :w<CR>
nnoremap <leader>a   :wa<CR>
nnoremap <leader>q   :q<CR>
nnoremap <leader>x   :x<CR>
" Check file in shellcheck:
nnoremap <leader>s :!clear && shellcheck %<CR>
" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

" [I]MAP
imap jk <Esc>

" ROS INDENTATION
au BufNewFile,BufRead *.cpp,*.h,*.hpp
     \ set shiftwidth=2  " Two space indents
     \ set tabstop=2     " Tab key indents two spaces at a time
     \ set expandtab     " Use spaces when the <Tab> key is pressed
     \ set cindent       " Turn on automatic C-code indentation

" I should add badwhitespace also to cpp
"highlight badwhitespace ctermbg=red guibg=red

au BufNewFile,BufRead *.py
     \ set tabstop=4 |
     \ set softtabstop=4 |
     \ set shiftwidth=4 |
     \ set textwidth=79 |
     \ set expandtab |
     \ set autoindent |
     \ set fileformat=unix |
     "\ match BadWhitespace /\s\+$/


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


""""""""" La[T]ex vimtex 
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg' "concealment
set conceallevel=1 "concealment
au BufNewFile,BufRead *.tex
     \ set spell spelllang=en_gb

""""""""" [P]lugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'|Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-peekaboo'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'sjl/gundo.vim'
Plug 'vim-syntastic/syntastic'
Plug 'SirVer/ultisnips'|Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-surround'
if !has('macunix')
      Plug 'taketwo/vim-ros'
endif

call plug#end() " Initialize plugin system
