-- basic settings
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 
vim.opt.expandtab = true
vim.cmd.colorscheme('embark')
vim.opt.statuscolumn = "%{get(b:, 'gitsigns_status', '')} %= %r | %= %{b:gitsigns_status}"

vim.keymap.set('i', 'jk', '<Esc>')
