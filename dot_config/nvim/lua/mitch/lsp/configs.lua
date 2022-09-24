require("mason").setup()
local lsp_installer = require "mason-lspconfig"
local lspconfig = require "lspconfig"

local servers = {
  "tsserver",
  "html",
  "cssls",
  "jsonls",
  "sumneko_lua",
  "pyright",
	"clangd"
}

lsp_installer.setup({
    ensure_installed = servers
})

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("mitch.lsp.handlers").on_attach,
		capabilities = require("mitch.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end
