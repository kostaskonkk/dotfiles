filetype plugin on "important for nerdcommenter 
syntax enable 
set nocompatible
set hidden
set number 
set undofile "Maintain undo history between sessions 
set undodir=~/.vim/undo
set relativenumber 
set showcmd " show last command at the bottom bar 
set cursorline " highlight current line 
set showmatch " highlight matching [{()}] 
set shell=/bin/bash "sets shell to bash, because fish causes some problems
 " SEARCHING 
 set incsearch  " search as characters are entered 
 set nohlsearch " Don't continue to highlight searched phrases  
 set incsearch  " But do highlight as you type your search. 
 

"[U]LTISNIPS
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsEditSplit="vertical" " :UltiSnipsEdit splits the window.
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
if has('macunix')
	let g:UltiSnipsSnippetDirectories = ['$HOME/.vim/ultisnips', 'UltiSnips']
	let g:vimtex_view_method='skim'
else
	let g:UltiSnipsSnippetDirectories = ['/home/kostas/.vim/ultisnips', 'UltiSnips']
	let g:vimtex_view_method='zathura'
endif

" [C]OLOURS
colorscheme gruvbox         " awesome colorscheme
"colorscheme molokai        " poppy  colorscheme
set bg=dark
let g:gruvbox_dark = 'hard'
let g:gruvbox_light= 'hard'
let g:airline_theme='gruvbox'
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set t_Co=256

"[L]EADER SHORTCUTS
let mapleader=" "     " leader is space and not \
nnoremap <leader>u   :GundoToggle<CR> " toggle gundo
nnoremap <leader>t   :TagbarToggle<CR> " toggle tagbar
nnoremap <leader>w   :w<CR>
nnoremap <leader>a   :wa<CR>
nnoremap <leader>q   :q<CR>
nnoremap <leader>x   :x<CR>
nnoremap <leader>m   :Make<CR>
nnoremap <leader>s :!clear && shellcheck %<CR>
nnoremap <leader><leader> :call NERDComment(0,"toggle")<CR>

nnoremap <Leader>y "+y
nnoremap <Leader>d "+d
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
nnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
nnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>
vnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>
vnoremap <leader><leader> :call NERDComment(0,"toggle")<CR>
nnoremap <leader>o :setlocal spell! spelllang=en_us<CR> " 'o' for 'orthography'
nnoremap <leader>b   :ls<CR>:b<Space>
nnoremap <leader>v   :ls<CR>:vsp<Space>
"nmap <leader>b :Buffers<CR>
"nmap <Leader>t :Files<CR>
"nmap <Leader>r :Tags<CR>
"
"Git
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>ga :Gcommit --amend<CR>
nnoremap <leader>gt :Gcommit -v -q %<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

"map <C-n> :NERDTreeToggle<CR> 

"Control Shortcuts
"Windows view with just control
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
"nmap <C-H> <C-w>H
"nmap <C-J> <C-w>J
"nmap <C-K> <C-w>K
"nmap <C-L> <C-w>L

" [I]MAP
imap jk <Esc>

" ROS INDENTATION
au BufNewFile,BufRead *.cpp,*.h,*.hpp
     \ set shiftwidth=2 | " Two space indents
     \ set tabstop=2    | " Tab key indents two spaces at a time
     \ set expandtab    | " Use spaces when the <Tab> key is pressed
     \ set cindent      | " Turn on automatic C-code indentation
     \ set foldmethod=syntax |
     \ set foldlevel=99      |

" I should add badwhitespace also to cpp
"highlight badwhitespace ctermbg=red guibg=red

au BufNewFile,BufRead *.py
     \ set foldmethod=indent |
     \ set tabstop=4 |
     \ set softtabstop=4 |
     \ set shiftwidth=4 |
     \ set textwidth=79 |
     \ set expandtab |
     \ set autoindent |

au BufNewFile,BufRead *.tex
     \ set wrap linebreak nolist |
     \ set spell spelllang=en_us |
     \ set tabstop=4    | " Tab key indents 4 spaces at a time
     \ set expandtab    | " Use spaces when the <Tab> key is pressed

au BufNewFile,BufRead *.md
     \ set filetype=markdown

""""""""" [Y]CM 
let g:ycm_server_python_interpreter="/usr/bin/python"
let g:ycm_global_ycm_extra_conf="/home/kostas/.vim/.ycm_extra_conf.py"

""""""""" [F]ast Fold
let g:tex_fold_enabled = 1
let g:xml_syntax_folding = 1
let g:fastfold_savehook = 1

""""""""" La[T]ex vimtex 
let g:vimtex_fold_enabled = 1
let g:vimtex_complete_bib = {'simple': 1} 
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
"let g:tex_flavor='latex'
let g:tex_flavor='pdflatex'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg' "concealment
set conceallevel=1 "concealment
let g:vimtex_indent_enabled=1
let g:vimtex_indent_bib_enabled=1
let g:vimtex_indent_on_ampersands=1

"""""""Thesaurus
let g:tq_map_keys = 0
nnoremap <Leader>, :ThesaurusQueryReplaceCurrentWord<CR> 

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'mediawiki', 'ext': '.md'}]

""""""""" [P]lugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'|Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-peekaboo'
Plug 'dag/vim-fish'
Plug 'junegunn/fzf.vim' |Plug 'junegunn/fzf'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-obsession'|Plug 'tpope/vim-surround'|Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch' |Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'sjl/gundo.vim'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes' 
Plug 'morhetz/gruvbox' 
Plug 'PotatoesMaster/i3-vim-syntax'
"Plug 'SirVer/ultisnips'|Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'|Plug 'Konfekt/FastFold'
Plug 'ycm-core/YouCompleteMe'
Plug 'w0rp/ale'
Plug 'ron89/thesaurus_query.vim'
Plug 'vimwiki/vimwiki'
if !has('macunix')
      Plug 'taketwo/vim-ros'
endif

call plug#end() " Initialize plugin system

function! OpenBibtexPDF()
    let s:word = expand("<cword>")
    let s:cmd = "silent !setsid mupdf `find ~/report/papers/ -iname '" . s:word . ".pdf' | head -1`&"
    execute s:cmd
endfunction 
nnoremap <silent> <leader>r :call OpenBibtexPDF()<cr>

function! OpenZathuraPDF()
    let s:word = expand("<cword>")
    let s:cmd = "silent !setsid zathura `find ~/report/papers/ -iname '" . s:word . ".pdf' | head -1`&"
    execute s:cmd
endfunction 
nnoremap <silent> <leader>z :call OpenZathuraPDF()<cr>

function! OpenEvincePDF()
    let s:word = expand("<cword>")
    let s:cmd = "silent !setsid evince `find ~/report/papers/ -iname '" . s:word . ".pdf' | head -1`&"
    execute s:cmd
endfunction 
nnoremap <silent> <leader>e :call OpenEvincePDF()<cr>

