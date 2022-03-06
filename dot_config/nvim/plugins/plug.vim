" If vim plug does not exist, install it and all plugins 

let data_dir = stdpath('data') . '/site'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $HOME/.config/nvim/init.vim
endif



" inspired by https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
" taken from https://github.com/mutecipher/dotfiles/blob/main/config/nvim/plugins/plug.vim

" reduce ammount of plugins
call plug#begin(stdpath('data') . '/plugged')

" colorscheme
" Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'ray-x/lsp_signature.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'onsails/lspkind-nvim'

" meant to be faster than vim airline/ vim lightline
" think about this
Plug 'nvim-lualine/lualine.nvim'

" love this - use bufferline.nvim
" https://github.com/akinsho/bufferline.nvim
" Plug 'romgrk/barbar.nvim'
Plug 'akinsho/bufferline.nvim'
" colors for lsp diagnostics
Plug 'folke/lsp-colors.nvim'

" essentially tabs fro buffers (not like traditional tabs)
" like tabs in web browsers
" another option is https://github.com/akinsho/bufferline.nvim

"Indentation guide
" thik about this
" Plug 'lukas-reineke/indent-blankline.nvim'

"File tree
Plug 'kyazdani42/nvim-tree.lua'

" LSP
" need to make sure this is working corectly
" should i still use the installer or hand code it all manually
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" Autocomplete
" seems to be working
" might still consider coq.nvim
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'

"snippets
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

"treesitter
"not completly needed, currently experimental
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 


" think about this
Plug 'cohama/lexima.vim'

Plug 'tpope/vim-commentary'
" can also use
" Plug 'preservim/nerdcommenter'

" telescope
Plug 'nvim-lua/plenary.nvim'
" havent really use it...
Plug 'nvim-telescope/telescope.nvim'

"git colunm 
Plug 'lewis6991/gitsigns.nvim'
" 
" try to use more oftern
Plug 'tpope/vim-fugitive'

"icons
Plug 'kyazdani42/nvim-web-devicons'

" language pack -> think about this
Plug 'sheerun/vim-polyglot'

" think about
Plug 'alvan/vim-closetag'

Plug 'prettier/vim-prettier', {'do': 'npm install'}

Plug 'folke/trouble.nvim' 

Plug 'phaazon/hop.nvim'

Plug 'tpope/vim-surround'

call plug#end()
