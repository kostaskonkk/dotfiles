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

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

 " Search for visually selected text, forwards or backwards.
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" BASIC 
set wildignore=*.pdf
set splitright

let g:ale_c_build_dir = 'build'
let g:ale_linters = {'cpp': ['g++']}

"[U]LTISNIPS
let g:UltiSnipsExpandTrigger="<C-k>"
"let g:UltiSnipsExpandTrigger="<space-tab>"
let g:UltiSnipsEditSplit="vertical" " :UltiSnipsEdit splits the window.
"let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"

if has('macunix')
	let g:UltiSnipsSnippetDirectories = ['$HOME/.vim/ultisnips', 'UltiSnips']
	let g:vimtex_view_method='skim'
else
	let g:UltiSnipsSnippetDirectories = ['/home/kostas/.vim/ultisnips', 'UltiSnips']
	let g:vimtex_view_method='zathura'
endif

" [C]OLOURS
if strftime("%H") < 20
  "colorscheme PaperColor      " Light colorschem
  set background=light
  colorscheme gruvbox         " awesome dark colorscheme
else
  colorscheme gruvbox         " awesome dark colorscheme
  set background=dark
endif

"colorscheme PaperColor      " Light colorschem
"colorscheme atom-dark      " awesome colorscheme
"colorscheme molokai        " poppy  colorscheme
"set bg=light
let g:gruvbox_dark = 'hard'
let g:gruvbox_light= 'hard'
let g:airline_theme='gruvbox'
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
"set t_Co=256
let g:rainbow_active = 1     " parentheses of different colors
let g:Illuminate_delay = 300

" General Mappings
nnoremap Y y$
"[L]eader Mappings
let mapleader=" "     " leader is space and not \
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <leader>w   :w<CR>
nnoremap <leader>a   :wa<CR>
nnoremap <leader>q   :q<CR>
nnoremap <leader>x   :x<CR>
nnoremap <leader>m   :Make<CR>
nnoremap <leader><leader> :call NERDComment(0,"toggle")<CR>
vnoremap <leader><leader> :call NERDComment(0,"toggle")<CR>
nnoremap <Leader>y "+y
nnoremap <Leader>d "+d
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
nnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
nnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>
vnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>
nnoremap <leader>o :setlocal spell! spelllang=en_us<CR> " 'o' for 'orthography'
nnoremap <leader>b   :ls<CR>:b<Space>
nnoremap <leader>v   :ls<CR>:vsplit<Space>
nnoremap <leader>s   :ls<CR>:split<Space>

"Plugin Calls
nnoremap <silent> <Leader>ng :Rg <C-R><C-W><CR>
nnoremap <leader>nu   :GundoToggle<CR> " toggle gundo
nnoremap <leader>nt   :TagbarToggle<CR> " toggle tagbar
nmap     <leader>nn :NERDTreeToggle<CR> 
nmap     <leader>ns :source ~/.vimrc<CR>
" Replace the text with translation
nmap <silent> <leader>e <Plug>TranslateR
vmap <silent> <leader>r <Plug>TranslateRV
" Display translation in a window
nmap <silent> <leader>nw <Plug>TranslateW
vmap <silent> <leader>z <Plug>TranslateWV
nmap <leader>b :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>t :Tags<CR>
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
nnoremap <leader>gl :silent! 0Glog<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>
"Windows view 
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

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


autocmd BufNewFile,BufRead *.cpp,*.h,*.hpp
     \ set shiftwidth=2 | " Two space indents
     \ set tabstop=2    | " Tab key indents two spaces at a time
     \ set expandtab    | " Use spaces when the <Tab> key is pressed
     \ set cindent      | " Turn on automatic C-code indentation
     \ set foldmethod=syntax |
     \ set foldlevel=99
     \ set makeprg=make 
	" I should add badwhitespace also to cpp
	"highlight badwhitespace ctermbg=red guibg=red
	"
autocmd BufNewFile,BufRead *.js,*.html,*.css
     \ set shiftwidth=2 | " Two space indents
     \ set tabstop=2    | " Tab key indents two spaces at a time
     \ set expandtab    | " Use spaces when the <Tab> key is pressed
     \ set autoindent   |
     \ set foldmethod=syntax |
     \ set foldcolumn=1 |
     \ set foldlevelstart=4 |
     \ let javaScript_fold=1
    

autocmd BufNewFile,BufRead *.py
     \ set foldmethod=indent |
     \ set tabstop=4 |
     \ set softtabstop=4 |
     \ set shiftwidth=4 |
     \ set textwidth=79 |
     \ set expandtab |
"nnoremap <leader>l   :Dispatch! python3 ~/datmo_ws/src/evo/datmo_evaluation.py <CR>
     "\ set autoindent |
     "\ let b:dispatch = 'python3 ~/datmo_ws/src/evo/datmo_evaluation.py'

autocmd BufNewFile,BufRead *.tex
     \ set wrap linebreak nolist |
     \ set spell spelllang=en_us |
     \ set tabstop=4    | " Tab key indents 4 spaces at a time
     \ set expandtab    | " Use spaces when the <Tab> key is pressed
     \ nnoremap <silent> <leader>e :call OpenEvincePDF()<CR> |
     \ nnoremap <silent> <leader>z :call OpenZathuraPDF()<CR> |
     \ nnoremap <silent> <leader>r :call OpenZathuraPDF()<CR> |

autocmd BufNewFile,BufRead *.md
     \ set filetype=markdown

autocmd BufNewFile,BufRead *.log  set autoread
autocmd BufNewFile,BufRead *.log  au CursorHold * checktime

""""""""" [Y]CM 
let g:ycm_server_python_interpreter="/usr/bin/python3"
let g:ycm_global_ycm_extra_conf="/home/kostas/.vim/.ycm_extra_conf.py"
let g:ycm_filepath_blacklist = {'python': 1}

""""""""" [F]ast Fold
let g:tex_fold_enabled = 1
let g:xml_syntax_folding = 1
let g:fastfold_savehook = 1
let g:markdown_folding = 1

""""""""" La[T]ex vimtex 
let g:vimtex_fold_enabled = 1
let g:vimtex_complete_bib = {'simple': 1} 
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
let g:tex_flavor='pdflatex'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg' "concealment
set conceallevel=1 "concealment
let g:vimtex_indent_enabled=1
let g:vimtex_indent_bib_enabled=1
let g:vimtex_indent_on_ampersands=1

let g:translator_target_lang='en'

"Coc nvim configuration

" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

""""""""" [P]lugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'|Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-peekaboo' "opens windows with the content of the registers
Plug 'dag/vim-fish'
Plug 'junegunn/fzf.vim' |Plug 'junegunn/fzf'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-obsession'|Plug 'tpope/vim-surround'|Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch' |Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'sjl/gundo.vim'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes' 
Plug 'morhetz/gruvbox' 
Plug 'NLKNguyen/papercolor-theme'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'SirVer/ultisnips'|Plug 'honza/vim-snippets'
Plug 'lervag/vimtex' 
Plug 'Konfekt/FastFold'
Plug 'w0rp/ale'
Plug 'RRethy/vim-illuminate'
Plug 'luochen1990/rainbow'
Plug 'Raimondi/delimitMate'
Plug 'chrisbra/csv.vim'
Plug 'junegunn/vim-easy-align'
"Plug 'davidhalter/jedi-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'taketwo/vim-ros'
Plug 'voldikss/vim-translator' 
Plug 'tpope/vim-dadbod'
"Plug 'sheerun/vim-polyglot' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'maxmellon/vim-jsx-pretty'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end() " Initialize plugin system
