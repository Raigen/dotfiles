set nocompatible                    " full vim
syntax enable                       " enable syntax highlighting
set encoding=utf8                   " utf8 default encoding

filetype off
call pathogen#infect()              " load pathogen
call pathogen#helptags()			

filetype plugin indent on

noremap , \
let mapleader = ","

set scrolloff=3                     " show 3 lines of context around the cursor
set autoread                        " set to auto read when a file is changed from the outside
set autowrite
set showcmd                         " show typed commands

set wildmenu                        " turn on WiLd menu
set wildmode=list:longest,list:full " activate TAB auto-completion for file paths
set wildignore+=*.o,.git,.svn,node_modules,CVS

set ruler                           " always show current position
set backspace=indent,eol,start      " set backspace config, backspace as normal
set nomodeline                      " security

set hlsearch                        " highlight search things
set incsearch                       " go to search results as typing
set smartcase                       " but case-sensitive if expression contains a capital letter.
set ignorecase                      " ignore case when searching
set gdefault                        " assume global when searching or substituting
set magic                           " set magic on, for regular expressions
set showmatch                       " show matching brackets when text indicator is over them

set lazyredraw                      " don't redraw screen during macros, faster
set ttyfast                         " improves redrawing for newer computers
set fileformats=unix,mac,dos

set shiftwidth=4                    " set tab width
set softtabstop=4
set tabstop=4

set smarttab
" set expandtab                       " use spaces, not tabs
set autoindent                      " set automatic code indentation
set hidden                          " allow background buffers w/out writing

set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
if v:version >= 730
	set undofile                " keep a persistent backup file
    set undodir=~/.vim/.undo,~/tmp,/tmp
endif
set nobackup                    " do not keep backup files, it's 70's style cluttering
set noswapfile                  " do not write annoying intermediate swap files

set nowrap                          " don't wrap lines

set list                            " show hidden characters
set listchars=tab:\ \ ,trail:·      " show · for trailing space, \ \ for trailing tab
" set spelllang=en,de                 " set spell check language
set noeb vb t_vb=                   " disable audio and visual bells

set t_Co=256                        " use 256 colors
colorscheme xoria256
if exists('+colorcolumn')
	set colorcolumn=115              " show a right margin column
endif
set cursorline                      " highlight current line

" FOLDING
set foldenable                   " enable folding
set foldmethod=indent            " most files are evenly indented
set foldlevel=99

"" STATUS LINE
set laststatus=2 " always hide the last status

"" derek wyatt config
" Make the 'cw' and like commands put a $ at the end instead of just deleting the text and replacing it
set cpoptions=ces$
" Set the status line the way i like it
set stl=%f\ %m\ %r%{fugitive#statusline()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]

" Show the current mode
set showmode

" Hide the mouse pointer while typing
set mousehide


" Same as default except that I remove the 'u' option
set complete=.,w,b,t

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Trying out the line numbering thing... never liked it, but that doesn't mean
" I shouldn't give it another go :)
set relativenumber

" use normal regex
" nnoremap / /\v
" vnoremap / /\v

" Complete whole filenames/lines with a quicker shortcut key in insert mode
inoremap <C-f> <C-x><C-f>
inoremap <C-l> <C-x><C-l>

" Easy window navigation
noremap <silent> <C-h> :wincmd h<cr>
noremap <silent> <C-j> :wincmd j<cr>
noremap <silent> <C-k> :wincmd k<cr>
noremap <silent> <C-l> :wincmd l<cr>
" nnoremap <silent> <leader>w <C-w>v<C-w>l<cr>

" Folding
" nnoremap <Space> za
" vnoremap <Space> za

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Edit and reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<cr>

nmap <silent> <leader>n :set invhls<CR>:set hls?<CR>
nmap <silent> <leader>w :set invwrap<CR>:set wrap?<CR>

nmap <silent> <leader>s :b#<CR>

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" handle tpl files like html
au BufRead,BufNewFile *.tpl set filetype=html

" CSS-type things
au BufRead,BufNewFile,BufWrite {*.less} set ft=css

" JavaScript
au BufRead,BufNewFile,BufWrite {*.js.asp,*.json} set ft=javascript

" Indent-based folding
au BufRead,BufNewFile,BufWrite {*.json,,*.py,*.coffee,*.yaml,*.yml} set foldmethod=indent

" jump through search results with tab instead of %
nnoremap <tab> %
vnoremap <tab> %

" --- Command-T
let g:CommandTMaxHeight = 15
let g:CommandTCancelMap = ['<Esc>', '<C-c>']
