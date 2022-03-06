" Load all plugins
source $HOME/.config/nvim/plugins/plug.vim
" might remove
lua require('nvim-tree').setup() 
" does'n need any config for now -> will move if more config needed

source $HOME/.config/nvim/plugins/lualine.lua
source $HOME/.config/nvim/plugins/completion.lua
source $HOME/.config/nvim/plugins/gitsigns.lua
source $HOME/.config/nvim/plugins/lspconfig.lua
source $HOME/.config/nvim/plugins/telescope.lua
source $HOME/.config/nvim/plugins/trouble.lua
source $HOME/.config/nvim/plugins/hop.lua
source $HOME/.config/nvim/plugins/toggleterm.lua
source $HOME/.config/nvim/plugins/bufferline.lua
source $HOME/.config/nvim/plugins/lsp_signature.lua
" disabling for now
" source $HOME/.config/nvim/plugins/treesitter.lua
