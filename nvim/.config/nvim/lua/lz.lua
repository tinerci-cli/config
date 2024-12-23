local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
require("lazy").setup({
	-- colorschemes
	{ "rebelot/kanagawa.nvim" },
	{ "killitar/obscure.nvim"},
	{ "shaunsingh/solarized.nvim" },
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
	{ "projekt0n/github-nvim-theme", name = 'github-theme' },
	{ "Mofiqul/adwaita.nvim" },
	{ "cryptomilk/nightcity.nvim" },

	-- useful stuff
	{ "jiaoshijie/undotree", dependencies = "nvim-lua/plenary.nvim", config = true, keys = {}, },
	{ "numToStr/Comment.nvim", opts = {}, lazy = false, },
	{ "NvChad/nvim-colorizer.lua",},
	{ "vim-scripts/SearchComplete",},
	{ "nvim-lualine/lualine.nvim", dependencies = { 'nvim-tree/nvim-web-devicons' }},
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-telescope/telescope-file-browser.nvim", dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }},

	-- lsp
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},

	{ "mfussenegger/nvim-jdtls" },
})
