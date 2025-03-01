local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {},
	handlers = {
		--  function(jdtls)
		--   require('lspconfig')[jdtls].setup({})
		-- end,
		function(clangd)
			require('lspconfig')[clangd].setup({})
		end,
		jdtls = lsp_zero.noop,
	},
})
local cmp = require('cmp')

cmp.setup({
	sources = {
		{ name = 'nvim_lsp' },
	},
	mapping = {
		['<Enter>'] = cmp.mapping.confirm({ select = false }),
		['<Esc>'] = cmp.mapping.abort(),
		['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
		['<Tab>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
		['<C-p>'] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item({ behavior = 'insert' })
			else
				cmp.complete()
			end
		end),
		['<C-n>'] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_next_item({ behavior = 'insert' })
			else
				cmp.complete()
			end
		end),
	},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
})
vim.api.nvim_set_keymap('n', '<F3>', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })
