-- global bindings
vim.keymap.set('n', '<s-b>', '<C-6>', {})
vim.g.mapleader = " "

-- telescope keybinings
local t_builtin = require('telescope.builtin')

vim.keymap.set("n", "<leader>fe", function() require("telescope").extensions.file_browser.file_browser() end)
vim.keymap.set("n", "<leader>ff", t_builtin.find_files, {})
vim.keymap.set('n', '<leader>g', t_builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', t_builtin.buffers, {})
vim.keymap.set('n', '<leader>d', t_builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>r', t_builtin.lsp_references, {})
vim.keymap.set('n', '<leader>v', t_builtin.git_branches, {})
vim.keymap.set('n', '<leader>e', function () t_builtin.diagnostics({bufnr=0}) end, {})

-- leap bindings
vim.keymap.set('n', 'f', '<Plug>(leap-forward)')
vim.keymap.set('n', 'F', '<Plug>(leap-backward)')

-- gitsigns
local gitsigns = require('gitsigns')
vim.keymap.set('n', '<leader>h', gitsigns.preview_hunk, {})


vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })
