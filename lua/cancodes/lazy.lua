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
    {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
    'nvim-lualine/lualine.nvim',
    'nvim-tree/nvim-web-devicons',
    'github/copilot.vim',
    {'fatih/vim-go', run = ':GoUpdateBinaries'},
    'tpope/vim-fugitive',
}

require('lazy').setup(plugins)
