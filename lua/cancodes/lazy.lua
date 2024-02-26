-- lazy.nvim Setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
    'marko-cerovac/material.nvim',
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
    'nvim-lualine/lualine.nvim',
    'nvim-tree/nvim-web-devicons',
    'github/copilot.vim',
    { 'fatih/vim-go',                    run = ':GoUpdateBinaries' },
    'tpope/vim-fugitive',
    { "folke/todo-comments.nvim",         dependencies = { "nvim-lua/plenary.nvim" } },
    -- LSP Plugins
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'junegunn/fzf',                     run = function() vim.fn['fzf#install']() end },
    { 'junegunn/fzf.vim' },
    { 'tpope/vim-surround' }
}

require('lazy').setup(plugins)
