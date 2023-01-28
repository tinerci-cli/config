-- numbers
vim.opt.number = true
vim.opt.relativenumber = true
-- search
vim.opt.hlsearch = true
vim.opt.wildmode = { 'longest', 'list' }
vim.opt.incsearch = true
vim.opt.inccommand = 'nosplit'
vim.opt.ignorecase = true
-- rice
vim.cmd.colorscheme("gruvbox")
vim.opt.background = 'dark'
vim.cmd.highlight({ "Normal", "guibg=none" })
vim.opt.termguicolors = true
vim.opt.scrolloff = 20
vim.cmd.syntax("on")
vim.cmd.filetype("on")
-- tab
vim.opt.smartcase = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
-- backups
vim.opt.hidden = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME")  .. "/.local/share/nvim/undodir"
vim.opt.undofile = true
--misc
vim.opt.signcolumn = 'auto'
vim.opt.colorcolumn = { 100 }
vim.opt.mouse = { a = true }
vim.opt.autoread = true
