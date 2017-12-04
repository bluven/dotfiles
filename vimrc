set nocompatible              " be iMproved
set history=256
set autowrite
set autoread
set clipboard+=unamed
set tags=./tags;$HOME " walk directory tree upto $HOME looking for tags
set timeout

" Modeline
set modeline
set modelines=5 " default numbers of lines to read for modeline instructions

" Backup
set nowritebackup
set nobackup
set directory=/tmp// " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)

" Match and search
set hlsearch    " highlight search
set ignorecase  " Do case in sensitive matching with
set smartcase   " be sensitive when there's a capital letter
set incsearch

" Buffers
set hidden

" Formatting "{{{
set fo+=o " Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " Do not automatically insert a comment leader after an enter
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)

set nowrap
set textwidth=0                " Don't wrap lines by default
set wildmode=longest,list      " At command line, complete longest common string, then list alternatives.

set backspace=indent,eol,start        " more powerful backspacing

set tabstop=4    " Set the default tabstop
set softtabstop=4
set shiftwidth=4 " Set the default shift width for indents
set expandtab   " Make tabs into spaces (set by tabstop)
set smarttab " Smarter tab levels

set autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case

" Visual "{{{
set number
set showmatch  " Show matching brackets.
set matchtime=5  " Bracket blinking.
set novisualbell  " No blinking
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
set vb t_vb= " disable any beeps or flashes on error
set ruler  " Show ruler
set showcmd " Display an incomplete command in the lower right corner of the Vim window
set shortmess=atI " Shortens messages

set nolist " Display unprintable characters f12 - switches
set listchars=tab:·\ ,eol:¶,trail:·,extends:»,precedes:« " Unprintable chars mapping

set foldenable " Turn on folding
set foldmethod=marker " Fold on the marker
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds 

set splitright
filetype off    " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let mapleader = ","
imap <c-d> <Esc>ddi
nmap <c-u> <Esc>gUW
imap <c-u> <Esc>gUWi

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>



" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Pychimp/Pychimp-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim.git'
" Bundle 'AutoClose'
Bundle 'matchit.zip'
Bundle 'ShowTrailingWhitespace'
Bundle 'EasyMotion'
Bundle 'FencView.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'UltiSnips'
Bundle 'Tabular'
Bundle 'Align'
Bundle 'SuperTab'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'jellybeans.vim'
Bundle 'L9'
Bundle 'klen/python-mode'
Bundle 'vim-clojure'
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Bundle 'jnwhiteh/vim-golang'
"Bundle 'YouCompleteMe'
Bundle 'ZenCoding.vim'
Bundle 'nerdtree'
" Bundle 'davidhalter/jedi-vim'
Bundle 'Blackrush/vim-gocode'
Bundle 'Shougo/neocomplcache'


filetype plugin indent on     " required!


" Python-mode
" Activate rope
" Keys:
" K             Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" "]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" "]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

let g:pymode_trim_whitespace = 1
let g:pymode_options = 1
"let g:pymode_indent = []
let g:pymode_motion = 1

 " Documentation
 let g:pymode_doc = 1
 let g:pymode_doc_key = 'K'

 "Linting
 let g:pymode_lint = 1
 let g:pymode_lint_checker = "pyflakes,pep8"
 " Auto check on save
 let g:pymode_lint_write = 1

 " Support virtualenv
 let g:pymode_virtualenv = 1

 " syntax highlighting
 let g:pymode_syntax = 1
 let g:pymode_syntax_all = 1
 let g:pymode_syntax_indent_errors = g:pymode_syntax_all
 let g:pymode_syntax_space_errors = g:pymode_syntax_all

 " Don't autofold code
 let g:pymode_folding = 0

 " Jump between windows
 nmap <c-j> <c-w>j
 nmap <c-k> <c-w>k
 nmap <c-l> <c-w>l
 nmap <c-h> <c-w>h

" NerdTree 
" open nerdtree when no file specified
autocmd vimenter * if !argc() | NERDTree | endif

" close vim when only nerd tree is left"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif

nmap <leader>n :NERDTreeToggle<CR>
inoremap <c-o> <c-x><c-o>

syntax on

filetype plugin indent on

let g:neocomplcache_enable_quick_match = 1 "“For input-saving, this variable controls whether you can  choose a candidate with a alphabet or number displayed beside a candidate after '-'.  When you input 'ho-a',  neocomplcache will select candidate 'a'.

"关闭autocomplpop 
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
""let g:neocomplcache_enable_smart_case = 1
""let g:neocomplcache_enable_camel_case_completion = 1
""let g:neocomplcache_enable_underbar_completion = 1
""let g:neocomplcache_enable_auto_select = 1
""let g:neocomplcache_enable_quick_match = 1

""autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
""autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
""autocmd FileType go setlocal omnifunc=gocomplete#Complete "gocomplete#Complete 

""if !exists('g:neocomplcache_omni_patterns')
""	let g:neocomplcache_omni_patterns = {}
""endif
""let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*|\h\w*::'
""let g:neocomplcache_omni_patterns.go = '\h\w*\.\?'

let g:clojure_syntax_keywords = {
    \ 'clojureMacro': ["defproject", "defcustom"],
    \ 'clojureFunc': ["string/join", "string/replace"]
    \ }

set pastetoggle=<F2>

