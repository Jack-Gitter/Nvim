vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'highlight yanked texted',
    pattern = '*',
    callback = function ()
        vim.highlight.on_yank({higroup='Cursor'})
    end
})

vim.api.nvim_create_autocmd('BufWritePost', {
    desc = 'highlight yanked texted',
    pattern = {'javascript', 'typescript'},
    callback = function ()
        vim.cmd(":Prettier")
    end
})
