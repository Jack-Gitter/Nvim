vim.g.mapleader = " "


-- global bindings

-- telescope keybinings
local t_builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", function() require("telescope").extensions.file_browser.file_browser() end)
vim.keymap.set('n', '<leader>fg', t_builtin.live_grep, {})
vim.keymap.set('n', '<leader>bb', t_builtin.buffers, {})
vim.keymap.set('n', '<leader>gd', t_builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>gi', t_builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>v', t_builtin.git_branches, {})
vim.keymap.set('n', '<leader>dd', function () t_builtin.diagnostics({bufnr=0}) end, {})
