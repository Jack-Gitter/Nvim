
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    if packer_bootstrap then
        require('packer').sync()
    end
    use 'wbthomason/packer.nvim'
    use 'https://github.com/lewis6991/gitsigns.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-tree/nvim-web-devicons'
    use 'tmsvg/pear-tree'
    use {'embark-theme/vim', as = 'embark'}
    use {'nvim-telescope/telescope.nvim', tag = '0.1.6', requires = {{'nvim-lua/plenary.nvim'}}}
    use {"nvim-telescope/telescope-file-browser.nvim", requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}}
    use {'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true }}
end)
