-- global bindings
vim.g.mapleader = " "
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<s-l>', '<C-6>', {})
vim.keymap.set('n', '<leader>z', 'zf', {})

-- telescope keybinings
-- local t_builtin = require('telescope.builtin')
local fzf_lua = require('fzf-lua')

-- vim.keymap.set("n", "<leader>fe", function() require("telescope").extensions.file_browser.file_browser() end, {})
-- vim.keymap.set('n', '<leader>b', function () t_builtin.buffers({sort_mru=true, ignore_current_buffer=true, initial_mode = "normal"}) end, {})
-- vim.keymap.set('n', '<leader>ew', function () t_builtin.diagnostics({bufnr=0, initial_mode = "normal"}) end, {})
-- vim.keymap.set('n', '<leader>fr', function() t_builtin.lsp_references({initial_mode = "normal"}) end, {})
-- vim.keymap.set('n', '<leader>a', function() vim.lsp.buf.code_action({initial_mode = "normal"}); end, {}) -- this one is stubborn, wont open in normal mode no matter what :/
-- vim.keymap.set('n', '<leader>gb', function() t_builtin.git_branches({initial_mode = "normal"}) end, {})
-- vim.keymap.set('n', '<leader>gd', function() t_builtin.lsp_definitions({initial_mode = "normal"}) end, {})
-- vim.keymap.set("n", "<leader>ff", t_builtin.find_files, {})
-- vim.keymap.set('n', '<leader>gr', t_builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>ho', vim.lsp.buf.hover, {})

vim.keymap.set('n', '<leader>b', function () fzf_lua.buffers() end, {})
vim.keymap.set('n', '<leader>fr', function () fzf_lua.lsp_references() end, {})
vim.keymap.set('n', '<leader>ca', function () fzf_lua.lsp_code_actions() end, {})
vim.keymap.set('n', '<leader>gd', function () fzf_lua.lsp_definitions() end, {})
vim.keymap.set('n', '<leader>ff', function () fzf_lua.files() end, {})
vim.keymap.set('n', '<leader>gr', function () fzf_lua.live_grep() end, {})
vim.keymap.set('n', '<leader>ho', vim.lsp.buf.hover, {})
vim.keymap.set('n', ';', '%', {})
vim.keymap.set('v', ';', '%', {})
vim.keymap.set('n', '<leader>md', function() vim.cmd("Glow") end, {})

-- leap bindings
vim.keymap.set('n', 'f', '<Plug>(leap-forward)')
vim.keymap.set('n', 'F', '<Plug>(leap-backward)')
vim.keymap.set('v', 'f', '<Plug>(leap-forward)')
vim.keymap.set('v', 'F', '<Plug>(leap-backward)')

-- gitsigns
local gitsigns = require('gitsigns')
vim.keymap.set('n', '<leader>gh', gitsigns.preview_hunk, {})
vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk)

-- diagnostics
vim.keymap.set("n", "<leader>ee", function() vim.diagnostic.open_float() end, {})

-- nvim oil
vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
