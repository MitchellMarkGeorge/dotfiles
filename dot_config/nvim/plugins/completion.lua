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
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(), -- dosen't really work
    -- cmp.mapping({
    --     i = cmp.mapping.abort(),
    --     c = cmp.mapping.close(),
    --   }),
    ['<C-e>'] =  cmp.mapping.close(),
    -- cmp.mapping.confirm({ select = true })
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    -- this is shift tab
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'buffer' },
    { name = 'path' },
  },
  documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
  }
})
