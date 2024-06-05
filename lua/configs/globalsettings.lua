-- vim options
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.laststatus = 3
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.lsp.set_log_level("debug")

-- vim cmds
vim.cmd.colorscheme('embark')

-- highlight group settings
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = "#66ff00", bg = "" })
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = "#FFFF00", bg = "" })
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = "#FF1100", bg = "" })
vim.api.nvim_set_hl(0, 'Search', { fg = "", bg = "#3880ff" })
vim.api.nvim_set_hl(0, 'IncSearch', { fg = "", bg = "#3880ff" })
vim.api.nvim_set_hl(0, 'GitSignsDeletePreview', { fg = "#FF1100", bg = "#2C2B40" })
vim.api.nvim_set_hl(0, 'GitSignsAddPreview', { fg = "#66ff00", bg = "#2C2B40" })



-- diagnostics settings
vim.diagnostic.config({ virtual_text = false })
vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

