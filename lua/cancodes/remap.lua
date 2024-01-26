vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Add keymap for fuzzy finder (fzf)
vim.keymap.set("n", "fg", '<cmd>Files<CR>')
vim.keymap.set("n", "ff", '<cmd>GFiles --cached --others --exclude-standard<CR>')
