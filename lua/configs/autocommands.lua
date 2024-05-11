vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'highlight yanked texted',
    pattern = '*',
    callback = function ()
        vim.highlight.on_yank({higroup='Cursor'})
    end
})
