vim.g.mapleader = " "

-- go up/down includes wrapped lines
-- vim.keymap.set("n", "j", "gjzz")
-- vim.keymap.set("n", "k", "gkzz")
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

-- switch tabs
-- vim.keymap.set("n", "<leader>j", "gt")
-- vim.keymap.set("n", "<leader>k", "gT")

-- switch split
-- vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
-- vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
-- vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
-- vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

--swicth buffers using > and <
-- vim.keymap.set('n', '>', ':bnext<CR>')
-- vim.keymap.set('n', '<', ':bprev<CR>')

-- copy/paste from system clipboard
-- vim.keymap.set("n", "<leader>y", "\"+y")
-- vim.keymap.set("n", "<leader>p", "\"+p")
-- vim.keymap.set("n", "<leader>P", "o<ESC>\"+P")

-- save file and exit
-- vim.keymap.set("n", "<C-x>", ":x <CR>")

-- move selected line(s) up/down in visual mode
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- subsitute selected word
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- disable highlighting till next searches
-- vim.keymap.set("n", "L", ":nohlsearch<CR>")
