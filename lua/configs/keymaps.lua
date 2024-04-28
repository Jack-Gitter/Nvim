vim.g.mapleader = " "


-- global bindings

-- telescope keybinings
local t_builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", function() require("telescope").extensions.file_browser.file_browser() end)
vim.keymap.set('n', '<leader>fg', t_builtin.live_grep, {})
vim.keymap.set('n', '<leader>bb', t_builtin.buffers, {})
