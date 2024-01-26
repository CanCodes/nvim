vim.opt.compatible = false
vim.showmatch = true
vim.opt.ignorecase = true
vim.opt.mouse = "v"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.wildmode = "longest,list"
vim.opt.filetype = "on"
vim.opt.syntax = "on"
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.ttyfast = true
vim.opt.spell = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 300
vim.opt.backup = false
vim.opt.writebackup = false

vim.opt.colorcolumn = "80"

vim.filetype.add({
    extension = {
        templ = "templ",
    },
})
