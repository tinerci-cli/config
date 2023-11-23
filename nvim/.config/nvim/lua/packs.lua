local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	-- packer itself
	use 'wbthomason/packer.nvim'

	-- colorschemes
	use 'ellisonleao/gruvbox.nvim'
	-- use 'dracula/vim'
	-- use 'artanikin/vim-synthwave84'

	-- shows tree of last changes
	use 'mbbill/undotree'

	-- gc(c) to (un)comment
	use 'numToStr/Comment.nvim'

	-- save sessions :OBsess
	use 'tpope/vim-obsession'

	-- lmao
	use 'eandrju/cellular-automaton.nvim'

	-- colorizes colorcodes
	use 'NvChad/nvim-colorizer.lua'

	-- tab completion in search
	use 'vim-scripts/SearchComplete'

	-- telescope fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'nvim-telescope/telescope-file-browser.nvim'

	-- which-key
	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}

		--statusline
		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true }
		}

		-- auto closes brackets and html
		use {
			"windwp/nvim-autopairs",
			config = function() require("nvim-autopairs").setup {} end
		}

		-- treesitter (better highlighting)
		use {
			'nvim-treesitter/nvim-treesitter',
			run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
			end,
		}

		use 'tpope/vim-fugitive'

		-- LSP language specific
		use {'mfussenegger/nvim-jdtls'} -- Java

		-- lsp-zero
		use {
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v1.x',
			requires = {
				-- LSP Support
				{'neovim/nvim-lspconfig'},             -- Required
				{'williamboman/mason.nvim'},           -- Optional
				{'williamboman/mason-lspconfig.nvim'}, -- Optional

				-- Autocompletion
				{'hrsh7th/nvim-cmp'},         -- Required
				{'hrsh7th/cmp-nvim-lsp'},     -- Required
				{'hrsh7th/cmp-buffer'},       -- Optional
				{'hrsh7th/cmp-path'},         -- Optional
				{'saadparwaiz1/cmp_luasnip'}, -- Optional
				{'hrsh7th/cmp-nvim-lua'},     -- Optional

				-- Snippets
				{'L3MON4D3/LuaSnip'},             -- Required
				{'rafamadriz/friendly-snippets'}, -- Optional

			}
		}

		-- Automatically set up your configuration after cloning packer.nvim
		-- Put this at the end after all plugins
		if packer_bootstrap then
			require('packer').sync()
		end
	end)
