require('mason').setup()
require('mason-lspconfig').setup()

local lspconfig = require('lspconfig')

lspconfig.vtsls.setup({})
lspconfig.lua_ls.setup({})
