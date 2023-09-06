-- Set Space as leader key
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex) -- Open File Explorer
vim.keymap.set("n", "<leader>cl", vim.cmd.Lazy) -- Open Lazy menu 
vim.keymap.set("n", "<leader>cm", vim.cmd.Mason) -- Open Mason menu

-- Use Tab to cycle open buffers
vim.keymap.set("n", "<Tab>", vim.cmd.bn)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bp)
