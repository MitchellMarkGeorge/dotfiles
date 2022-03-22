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
" " Vim
" colorscheme darkplus
" colorscheme darkplus

" set background=dark
" if (has("autocmd"))
"   augroup colorextend
"     autocmd!
"     " Make `Function`s bold in GUI mode
"     autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
"     " Override the `Statement` foreground color in 256-color mode
"     " autocmd ColorScheme * call onedark#extend_highlight("Statement", { "fg": { "cterm": 128 } })
"     " Override the `Identifier` background color in GUI mode
"     " autocmd ColorScheme * call onedark#extend_highlight("Identifier", { "bg": { "gui": "#333333" } })
"   augroup END
" endif

let g:onedark_config = {
    \ 'style': 'darker',
\}
colorscheme onedark
" highliting for completion
" gray
highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
" blue
highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6 gui=bold
highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6 gui=bold
" light blue
highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE gui=bold
highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE gui=bold
highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE gui=bold
highlight! CmpItemKindFile guibg=NONE guifg=#9CDCFE gui=bold
" pink
highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0 gui=bold
highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0 gui=bold
highlight! CmpItemKindModule guibg=NONE guifg=#C586C0 gui=bold
" front
highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4 gui=bold
highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4 gui=bold
highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4 gui=bold
" default cursor -> #c7c7c7

