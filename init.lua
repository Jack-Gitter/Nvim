-- packer installations
require("plugins")

-- individual configuration files 
require("configs/treesitter")
require("configs/telescope")
require("configs/webdev-icons")
require("configs/lualine")

-- basic settings
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 
vim.opt.expandtab = true
vim.cmd.colorscheme('embark')
vim.opt.statuscolumn = "%= %#Normal# %r %= "


-- global bindings
vim.g.mapleader = " "

-- telescope keybinings
local t_builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>fb", function() require("telescope").extensions.file_browser.file_browser() end)
vim.keymap.set('n', '<leader>ff', t_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', t_builtin.live_grep, {})
vim.keymap.set('n', '<leader>bb', t_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', t_builtin.help_tags, {})
