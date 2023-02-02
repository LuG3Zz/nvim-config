local cmp = require("cmp")

cmp.setup({
	-- Specify the snippet engine
	snippet = {
		expand = function(args)
			-- For `vsnip` users.
			vim.fn["vsnip#anonymous"](args.body)

			-- For `luasnip` users.
			-- require('luasnip').lsp_expand(args.body)

			-- For `ultisnips` users.
			vim.fn["UltiSnips#Anon"](args.body)

			-- For `snippy` users.
			-- require'snippy'.expand_snippet(args.body)
		end,
	},
	-- Completion source
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		-- For vsnip users.
		{ name = "vsnip" },

		-- treesitter
		-- { name = "treesitter" },

		-- document-symbol
		{ name = "nvim_lsp_document_symbol" },

		-- signature-help
		{ name = "nvim_lsp_signature_help" },

		-- For luasnip users.
		-- { name = 'luasnip' },

		--For ultisnips users.
		{ name = "ultisnips" },

		-- -- For snippy users.
		-- { name = 'snippy' },
	}, { { name = "buffer" }, { name = "path" } }),

	-- Shortcut settings
	mapping = require("keybindings").cmp(cmp),
	-- Display type icons with lspkind-nvim
	formatting = require("lsp.ui").formatting,
})

-- / Find mode uses buffer source
cmp.setup.cmdline("/", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

-- : Using path and cmdline sources in command line mode.
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})
