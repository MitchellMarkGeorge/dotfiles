require("null-ls").setup({
    sources = {
        -- if eslint is too slow, use eslint_d
        require("null-ls").builtins.diagnostics.eslint.with({
                prefer_local = "node_modules/.bin"
            }),
        require("null-ls").builtins.code_actions.eslint.with({
                prefer_local = "node_modules/.bin"
            }),
        require("null-ls").builtins.diagnostics.rubocop.with({
                prefer_local = "bin"
            }),
        require("null-ls").builtins.formatting.prettier.with({
                prefer_local = "node_modules/.bin"
            }),
        require("null-ls").builtins.formatting.rubocop.with({
                prefer_local = "bin"
            })
    },
})
