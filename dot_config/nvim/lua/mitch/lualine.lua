-- can do other config later
-- small changes to normal ayu dark theme: https://github.com/nvim-lualine/lualine.nvim/blob/master/lua/lualine/themes/ayu_dark.lua
-- inspired by http://www.akhatib.com/minimal-and-clean-vim-airline-theme/

require('lualine').setup {
  options = {
    theme = "onedark",
    section_separators = { left = '', right = '' },
    component_separators = '',
    disabled_filetypes = {"NvimTree", "Outline"}
  },

  sections = {
    lualine_a = { {'mode', separator = { left = '' }, right_padding = 2 }},
    -- think bout the diagnostics
    lualine_b = {'branch', 'diagnostics'},
    lualine_c = {'filename'},
    -- dont really need the encoding
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = { {'location', separator = { right = '' }, left_padding = 2 } },
  },

}

require("lsp-colors").setup({ -- not sure this is needed anymore
    Error = "#db4b4b",
    Warning = "#e0af68",
    Information = "#0db9d7",
    Hint = "#10B981"
  })
