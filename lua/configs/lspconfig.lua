require('mason').setup()
require('mason-lspconfig').setup()

local lspconfig = require('lspconfig')



local cmp = require'cmp'

-- Global setup.
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
  window = {
     completion = cmp.config.window.bordered(),
     documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, {
    { name = 'buffer' },
  })
})


local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.vtsls.setup({capabilities=capabilities})
lspconfig.lua_ls.setup({capabilities=capabilities})