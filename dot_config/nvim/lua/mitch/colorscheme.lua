-- Lua
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()

-- hilighing for completion items

vim.cmd([[
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
]])