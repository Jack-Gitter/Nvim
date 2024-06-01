-- global bindings
vim.g.mapleader = " "
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<s-l>', '<C-6>', {})

-- telescope keybinings
local t_builtin = require('telescope.builtin')

vim.keymap.set("n", "<leader>fe",
function()
    require("telescope").extensions.file_browser.file_browser()
    vim.api.nvim_feedkeys("f", "i", true)
    vim.api.nvim_feedkeys("jk", "", true)
end, {})

vim.keymap.set('n', '<leader>b',
function ()
    t_builtin.buffers({sort_mru=true, ignore_current_buffer=true})
    vim.api.nvim_feedkeys("jk", "", false)
end, {})
vim.keymap.set("n", "<leader>ff", t_builtin.find_files, {})
vim.keymap.set('n', '<leader>gr', t_builtin.live_grep, {})
vim.keymap.set('n', '<leader>d', t_builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>r', t_builtin.lsp_references, {})
vim.keymap.set('n', '<leader>v', t_builtin.git_branches, {})
vim.keymap.set('n', '<leader>e', function () t_builtin.diagnostics({bufnr=0}) end, {})
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>m', function() vim.cmd(':Glow') end, {})
vim.keymap.set('n', ';', '%', {})

-- leap bindings
vim.keymap.set('n', 'f', '<Plug>(leap-forward)')
vim.keymap.set('n', 'F', '<Plug>(leap-backward)')

-- gitsigns
local gitsigns = require('gitsigns')
vim.keymap.set('n', '<leader>gh', gitsigns.preview_hunk, {})

-- diagnostics
vim.keymap.set("n", "<leader>sd", function() vim.diagnostic.open_float() end, {})

