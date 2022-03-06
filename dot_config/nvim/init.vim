" This must be first, because it changes other options as side effect

" DO ALL MAPPING AND KEYBINDING

" in command mode, use <C-P> to navigate options

set nocompatible
" find better theme
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/plugins/init.vim
source $HOME/.config/nvim/keybindings.vim

" let g:vscode_style = "dark"
" colorscheme vscode

" theme from here: https://github.com/ayu-theme/ayu-vim
" also install iterm theme
" and change cursor color to #ffae57
" enable Smart box cursor color
" hide scrollbar
" let ayucolor="dark" 
" colorscheme ayu
" Vim
colorscheme onedark

" set background=dark

" colorscheme onedark
" default cursor -> #c7c7c7
