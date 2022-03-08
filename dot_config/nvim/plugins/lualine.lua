-- can do other config later
-- small changes to normal ayu dark theme: https://github.com/nvim-lualine/lualine.nvim/blob/master/lua/lualine/themes/ayu_dark.lua
-- inspired by http://www.akhatib.com/minimal-and-clean-vim-airline-theme/


local colors = {
    color2   = '#0f1419',
    color3   = '#f07177',
    color4   = '#e6e1cf',
    color5   = '#14191f',
    color13  = '#BBE67E',
    color10  = '#ffae57',
    color8   = '#D4BFFF',
    color9   = '#3e4b59',
}

local minnimal_ayu = {
    visual = {
      a = { fg = colors.color2, bg = colors.color3, gui = 'bold' },
      b = { fg = colors.color4, bg = colors.color5 },
    },
    replace = {
      a = { fg = colors.color2, bg = colors.color8, gui = 'bold' },
      b = { fg = colors.color4, bg = colors.color5 },
    },
    inactive = {
    --   c = { fg = colors.color4, bg = colors.color2 },
    -- technically not needed here
      a = { fg = colors.color4, bg = colors.color5, gui = 'bold' },
      b = { fg = colors.color4, bg = colors.color5 },
    },
    normal = {
      c = { fg = colors.color9, bg = colors.color2 },
      a = { fg = colors.color2, bg = colors.color10, gui = 'bold' },
      b = { fg = colors.color4, bg = colors.color5 },
    },
    insert = {
      a = { fg = colors.color2, bg = colors.color13, gui = 'bold' },
      b = { fg = colors.color4, bg = colors.color5 },
    },
}



-- require('lualine').setup({
--     options = {
--         -- theme = 'vscode'
--         theme = minnimal_ayu,
--         section_separators = '' , component_separators = ''
--     },
--     -- https://github.com/nvim-lualine/lualine.nvim#default-config
--     sections = {
--         lualine_a = {'mode'},
--         -- think bout the diagnostics
--         lualine_b = {'branch', 'diagnostics'},
--         lualine_c = {'filename'},
--         -- dont really need the encoding
--         lualine_x = {'encoding', 'filetype'},
--         lualine_y = {'progress'},
--         lualine_z = {'location'}
--       },
-- })
--
require('lualine').setup {
  options = {
    theme = "onedark",
    section_separators = '' , component_separators = '',
    disabled_filetypes = {"NvimTree", "Outline"}
  },

  sections = {
    lualine_a = {'mode'},
    -- think bout the diagnostics
    lualine_b = {'branch', 'diagnostics'},
    lualine_c = {'filename'},
    -- dont really need the encoding
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },

}

require("lsp-colors").setup({
    Error = "#db4b4b",
    Warning = "#e0af68",
    Information = "#0db9d7",
    Hint = "#10B981"
  })
