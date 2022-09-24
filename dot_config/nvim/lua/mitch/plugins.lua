-- automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local packer = require("packer")

-- use rounded corners with packer window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim' -- used in a lot of other plugins
    use 'windwp/nvim-autopairs'
    -- icons
    use 'kyazdani42/nvim-web-devicons'

    use 'navarasu/onedark.nvim'
    use 'ray-x/lsp_signature.nvim'
    use 'akinsho/toggleterm.nvim'
    use 'onsails/lspkind-nvim'
    use 'simrat39/symbols-outline.nvim'

    use 'nvim-lualine/lualine.nvim'

    -- use 'romgrk/barbar.nvim'
    use 'akinsho/bufferline.nvim'
    -- colors for lsp diagnostics
    use 'folke/lsp-colors.nvim'


    -- think about this
    -- use 'lukas-reineke/indent-blankline.nvim'

    -- File tree
    use 'kyazdani42/nvim-tree.lua'

    -- LSP
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    -- use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'

    -- for formatting and diagnostics
    use 'jose-elias-alvarez/null-ls.nvim'

    -- for lsp ui stuff
    use {'glepnir/lspsaga.nvim',  branch = 'main' }

    -- Autocomplete
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use "hrsh7th/cmp-nvim-lua"

    -- hilight uses of currentr word under the cursor
    use "RRethy/vim-illuminate"

    --snippets
    use 'rafamadriz/friendly-snippets'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    --treesitter
    --not completly needed, currently experimental
    -- use 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 



    use 'tpope/vim-commentary'
    -- can also use
    -- use 'preservim/nerdcommenter'

    -- telescope
    use 'nvim-telescope/telescope.nvim'

    -- git colunm 
    use 'lewis6991/gitsigns.nvim'

    use 'tpope/vim-fugitive'


    -- language pack -> think about this
    use 'sheerun/vim-polyglot'

    use 'folke/trouble.nvim' 

    use 'tpope/vim-surround'

    use "mfussenegger/nvim-jdtls"

  
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all useins
    if packer_bootstrap then
      require('packer').sync()
    end
  end)
