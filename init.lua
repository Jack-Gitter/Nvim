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
vim.opt.statuscolumn = "%= %r %= "


-- telescope keybinings
vim.keymap.set("n", "<space>fb", function() require("telescope").extensions.file_browser.file_browser() end)
