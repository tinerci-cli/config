local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', ":Telescope file_browser<CR>", {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})

local actions = require "telescope.actions"
require("telescope").setup {
	defaults = {
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			},
		},
	},
	extensions = {
		file_browser = {
			-- theme = "",
			hijack_netrw = true, -- disables netrw and use telescope-file-browser in its place
			auto_depth = true,
			mappings = {
				["i"] = {
					-- your custom insert mode mappings
				},
				["n"] = {
					-- your custom normal mode mappings
				},
			},
		},
	}
}


require("telescope").load_extension "file_browser" -- load file browser
