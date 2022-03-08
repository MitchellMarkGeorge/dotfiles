" most of these should be fine in neovim
" check this out https://neovim.io/doc/user/vim_diff.html

" TODO -> FILTER OUT DEFAUTL NEOVIM CONFIGS
" This must be first, because it changes other options as side effect
set nocompatible

" adds space for signs
set signcolumn=yes

" height of pop up/ completion
set pumheight=10

" needed to get terminal gui colors working correctly
set termguicolors

"set terminal title
set title

" force right splits for vertical splits
set splitright

" force below splits for horizontal splits
set splitbelow

"number of screen lines to keep above and below the cursor
set scrolloff=8

"number of screen lines to keep left and right the cursor
set sidescrolloff=8

" set clipboard
set clipboard=unnamedplus "allows use with syste clipboard - changes behaviour of p though
" Under the command mode, the bottom-layer operation instructions will be completed automatically by pressing the Tab key. 
"The first time you press Tab, a list of all matched operation instructions will be displayed; and the second time you press Tab, each instruction will be selected in turn.
set wildmenu
" set wildmode=longest:list,full

" for autocomplete to work properly
set completeopt=menu,menuone,noselect
set shortmess+=c 

" Enable use of the mouse for all modes
set mouse=a

" Allow hidden buffers (essentially allow editing multiple bufferes without saving immediately)
set hidden

" Show partial commands in the last line of the screen
set showcmd

" show current mode (is this needed)
" set showmode
" dont show mode as it is already in the status line
set noshowmode


set encoding=utf-8

" this is for git gutter
set updatetime=300

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

"show matching braces/brackets
set showmatch

" Indentation settings for using 4 spaces instead of tabs.
set expandtab
set shiftwidth=4
set softtabstop=4

" Enable syntax highlighting
syntax enable
" should it be syntax on?

" Always display the status line, even if only one window is displayed
set laststatus=2

" Always show cursor position
set ruler

" Highlight the line currently under cursor 
set cursorline

" show line numbers
set number

" set relative numbers -> usefull for numbered commands like 5j and 4k
set relativenumber

" Disable annoying sound on errors
set noerrorbells
" set novisualbell

" Use visual bell instead of beeping when doing something wrong (should flash the screen)
set visualbell

" Nerd font for MavVim (good to render devicons properly)
set guifont=MesloLGS\ NF:h13

" filetype on

" filetype plugin on

" filetype indent on

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype plugin indent on

" No backup (use Git instead)
set nobackup

" Dont wrap file lines in editor
set nowrap

" highlight search terms
set hlsearch

" show search matches as you type
set incsearch

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*js,*jsx,*tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
" think abiut this one
" let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*js,*tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
" let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
" let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
" let g:closetag_regions = {
"     \ 'typescript.tsx': 'jsxRegion,tsxRegion',
"     \ 'javascript.jsx': 'jsxRegion',
"     \ 'typescriptreact': 'jsxRegion,tsxRegion',
"     \ 'javascriptreact': 'jsxRegion',
"     \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
