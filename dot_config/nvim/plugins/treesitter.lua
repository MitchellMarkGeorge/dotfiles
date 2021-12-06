-- not using this for now
require('nvim-treesitter.configs').setup({
    ensure_installed = {'javascript', 'json', 'css', 'typescript', 'ruby', 'tsx'},
    highlight = {
        enable = true
    }
})