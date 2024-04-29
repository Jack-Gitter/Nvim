-- vim options
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 
vim.opt.expandtab = true
vim.opt.laststatus = 3
--vim.opt.statuscolumn = "%=%r|%="

-- vim cmds
vim.cmd.colorscheme('embark')

-- vim keybindings
vim.keymap.set('i', 'jk', '<Esc>')

-- highlight group settings
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = "#66ff00", bg = "" })
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = "#FFFF00", bg = "" })
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = "#FF1100", bg = "" })




