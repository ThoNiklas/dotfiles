" Basics
    set backupdir=/tmp/
    set directory=/tmp/
    set undodir=/tmp/
    set runtimepath+=~/.vim/ftplugin
    set nocompatible " explicitly get out of vi-compatible mode
    set noexrc " don't use local version of .(g)vimrc, .exrc
    set background=light " we plan to use a dark background
    set fenc=utf-8 " UTF-8
    set cpoptions=aABceFsmq
    "             |||||||||
    "             ||||||||+-- When joining lines, leave the cursor
    syntax on " syntax highlighting on
    set textwidth=80
    set history=9999 " big old history
    set timeoutlen=300 " super low delay (works for me)
    set formatoptions+=n " Recognize numbered lists
    set formatlistpat=^\\s\\(\\d\\\|[-]\\)\\+[\\]:.)}\\t\]\\s
    set viminfo+=! " Store upper-case registers in viminfo
    set nomore " Short nomore
" Functions
    function! s:find_git_root()
        return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
    endfunction
" Plugins
    so ~/.vim/plugins.vim
    " a.vim
    map <C-e> :A<CR>
    " NerdTree
    map <C-o> :NERDTreeToggle<CR>
    " fzf
    command! ProjectFiles execute 'Files' s:find_git_root()
    map ; :ProjectFiles<CR>
" General
    filetype plugin on " load filetype plugins/indent settings
    set autochdir " always switch to the current file directory
    set backspace=indent,eol,start " make backspace a more flexible
    "set backup " make backup files
    set clipboard+=unnamed " share windows clipboard
    set fileformats=unix,dos,mac " support all three, in this order
    set hidden " you can change buffers without saving
    set iskeyword+=_,$,@,%,# " none of these are word dividers
    set mouse=a " use mouse everywhere
    set noerrorbells " don't make noise
    set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
    set wildmenu " turn on command line completion wild style
    set wildignore=.dll,.o,.obj,.bak,.exe,.pyc,.jpg,.gif,.png "
    set wildmode=list:longest " turn on wild mode huge list
    set autoindent
    let html_number_lines = 0
    let html_use_css = 0
    let use_xhtml = 0
    let g:FuzzyFinderOptions = { 'Base':{}, 'Buffer':{}, 'File':{}, 'Dir':{}, 'MruFile':{}, 'MruCmd':{}, 'Bookmark':{}, 'Tag':{}, 'TaggedFile':{}}
" Vim UI
    set tabpagemax=100
    set incsearch " BUT do highlight as you type you search phrase
    set laststatus=2 " always show the status line
    set lazyredraw " do not redraw while running macros
    set linespace=0 " don't insert any extra pixel lines betweens rows
    set list " we do what to show tabs, to ensure we get them out of
    set listchars=tab:>-,trail:- " show tabs and trailing
    set matchtime=5 " how many tenths of a second to blink matching
    set nohlsearch " do not highlight searched for phrases
    set nostartofline " leave my cursor where it was
    set novisualbell " don't blink
    set number " turn on line numbers
    set numberwidth=5 " We are good up to 99999 lines
    set report=0 " tell us when anything is changed via :...
    set ruler " Always show current positions along the bottom
    set scrolloff=10 " Keep 10 lines (top/bottom) for scope
    set shortmess=aOstT " shortens messages to avoid 'press a key' prompt
    set showcmd " show the command being typed
    set showmatch " show matching brackets
    set sidescrolloff=10 " Keep 5 lines at the size
    set statusline=%F[%{&ff}]%y[%p%%][%04l,%04v]
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    + current column
    "              | | | | |  |   |      |  |     +-- current line
    "              | | | | |  |   |      |  +-- current % into file
    "              | | | | |  |   |      +-- current syntax in square
    "              | | | | |  |   +-- current fileformat
    "              | | | | |  +-- number of lines
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer
" Text Formatting/Layout
    set expandtab " no real tabs please!
    set formatoptions=rq " Automatically insert comment leader on
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
    set nowrap " do not wrap line
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartcase " if there are caps, go case-sensitive
    set shiftwidth=4 " auto-indent amount when using cindent, >>, <<
    set softtabstop=4 " when hitting tab or backspace, how many spaces
    set tabstop=8 " real tabs should be 8, and they will show with set
