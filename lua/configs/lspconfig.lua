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
  mapping = cmp.mapping.preset.insert({
    ['<C-k>'] = cmp.mapping.scroll_docs(-4),
    ['<C-j>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<s-j>'] = cmp.mapping.select_next_item(),
    ['<s-k>'] = cmp.mapping.select_prev_item()
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, {
    { name = 'buffer' },
  })
})


local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.ts_ls.setup({capabilities=capabilities})
lspconfig.gopls.setup({capabilities=capabilities})
lspconfig.lua_ls.setup({capabilities=capabilities, settings = {Lua = {diagnostics = {globals = {'vim'}}}}})

vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })


require('lint').linters_by_ft = {
  typescript = {'eslint'},
  javascript = {'eslint'}
}


vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
  require("lint").try_lint(nil, {ignore_errors = true})
  end,
})
