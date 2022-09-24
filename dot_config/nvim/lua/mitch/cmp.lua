local cmp = require('cmp')
local lspkind = require('lspkind')
-- look into this: https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings
-- and this: https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion (might just copy this one)
cmp.setup({
    formatting = {
        format = lspkind.cmp_format({
                maxwidth = 50,
                mode = 'symbol_text'
            }),
    },
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-1), {"i", "c"}),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(1), {"i", "c"}),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { "i", "c"}),
    ['<C-e>'] =  cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close()
    },
    -- Accept currently selected item. If none selected, `select` first item.
    ['<CR>'] = cmp.mapping.confirm {
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, {"i", "s"}),
    -- this is shift tab
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, {"i", "s"})
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'buffer' },
    { name = 'path' },
  },
  confirm_opts = { -- think about this
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  }
})
