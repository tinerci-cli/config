-- remove whitespaces on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- dont list quickfix buffers
--vim.api.nvim_create_autocmd("FileType", {
--  pattern = "qf",
--  callback = function()
--    vim.opt_local.buflisted = false
--  end,
--})

--quit commands

vim.cmd[[

command! Wq :wq
command! W :w
command! X :x
command! Q :q
:cmap Q! q!
:cmap q1 q!
]]
