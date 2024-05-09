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
    use 'karb94/neoscroll.nvim'
    use 'numToStr/Comment.nvim'
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use 'neovim/nvim-lspconfig'
    use 'akinsho/git-conflict.nvim'
    use 'mfussenegger/nvim-lint'

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use {"L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp"}

    use {'embark-theme/vim', as = 'embark'}
    use {'nvim-telescope/telescope.nvim', tag = '0.1.6', requires = {{'nvim-lua/plenary.nvim'}}}
    use {"nvim-telescope/telescope-file-browser.nvim", requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}}
    use {'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true }}

    use {'ggandor/leap.nvim', requires = {'tpope/vim-repeat'}}

end)
