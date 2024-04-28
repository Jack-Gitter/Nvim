-- basic settings
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 
vim.opt.expandtab = true
vim.opt.laststatus = 3
vim.cmd.colorscheme('embark')
vim.opt.statuscolumn = "%{vim.b.gitsigns_status}%=%r|"

vim.keymap.set('i', 'jk', '<Esc>')

vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = "#66ff00", bg = "" })
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = "#FFFF00", bg = "" })
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = "#FF1100", bg = "" })








