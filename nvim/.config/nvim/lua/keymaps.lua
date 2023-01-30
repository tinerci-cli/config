vim.g.mapleader = ","
vim.keymap.set("n", "<F2>", ":%s/\\s\\+$//e <CR>")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "<C-j>", "gt")
vim.keymap.set("n", "<C-k>", "gT")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "o<ESC>\"+P")
vim.keymap.set("n", "<leader>f", ":Files .<CR>")
vim.keymap.set("n", "<leader>n", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<F12>", ":set number! relativenumber! <CR>")
vim.keymap.set("n", "<C-h>", ":UndotreeToggle <CR>")
vim.keymap.set("n", "<C-x>", ":x <CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")