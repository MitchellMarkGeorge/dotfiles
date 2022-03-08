require('nvim-tree').setup {
    auto_close = true,
    diagnostics = {
      enable = true,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      },
    },
    open_file = {
        quit_on_open = true
      }
  }
