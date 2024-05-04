vim.g.mapleader = " "


-- global bindings

-- telescope keybinings
local t_builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>f", function() require("telescope").extensions.file_browser.file_browser() end)
vim.keymap.set('n', '<leader>g', t_builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', t_builtin.buffers, {})
vim.keymap.set('n', '<leader>d', t_builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>i', t_builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>v', t_builtin.git_branches, {})
vim.keymap.set('n', '<leader>p', '<C-6>', {})
vim.keymap.set('n', '<leader>e', function () t_builtin.diagnostics({bufnr=0}) end, {})
