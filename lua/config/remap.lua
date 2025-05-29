vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pf", vim.cmd.Ex)

vim.keymap.set("n", "<C-c>", vim.cmd.nohlsearch)
vim.keymap.set("v", "<leader>y", '"+y')

-- alt alters
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move a line up
vim.keymap.set("o", "J", "mzJ`z")

vim.keymap.set("n", "<leader>af", vim.lsp.buf.format)

vim.keymap.set("n", "<C-l>", "<cmd>UndotreeToggle<CR>")

vim.keymap.set("i", "<C-c>", "<Esc>")

