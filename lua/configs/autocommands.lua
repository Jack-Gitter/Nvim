vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'highlight yanked texted',
    pattern = '*',
    callback = function ()
        vim.highlight.on_yank({higroup='Cursor'})
    end
})

vim.api.nvim_create_autocmd('BufWritePost', {
    desc = 'auto prettier on file save',
    pattern = {'*.ts', '*.js'},
    command = "Prettier"
})
