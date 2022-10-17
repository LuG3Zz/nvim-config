local mason_null_ls = require("mason-null-ls")
local null_ls = require("null-ls")

mason_null_ls.setup({
	ensure_installed = {
		"clang_format",
		"cmake_format",
		"gofumpt",
		"goimports",
		"golines",
		"staticcheck",
		"eslint_d",
		"markdownlint",
		"prettier",
		"shellcheck",
		"stylua",
		"jq",
		"shfmt",
		"cspell",
	},
})

mason_null_ls.setup_handlers({
	clang_format = function()
		null_ls.register(null_ls.builtins.formatting.clang_format)
	end,
	cmake_format = function()
		null_ls.register(null_ls.builtins.formatting.cmake_format)
	end,
	stylua = function()
		null_ls.register(null_ls.builtins.formatting.stylua)
	end,
	prettier = function()
		null_ls.register(null_ls.builtins.formatting.prettier)
	end,
	gofumpt = function()
		null_ls.register(null_ls.builtins.formatting.gofumpt)
	end,
	goimports = function()
		null_ls.register(null_ls.builtins.formatting.goimports)
	end,
	golines = function()
		null_ls.register(null_ls.builtins.formatting.golines)
	end,
	jq = function()
		null_ls.register(null_ls.builtins.formatting.jq)
	end,
	staticcheck = function()
		null_ls.register(null_ls.builtins.diagnostics.staticcheck)
	end,
	eslint_d = function()
		null_ls.register(null_ls.builtins.code_actions.eslint_d)
	end,
	shellcheck = function()
		null_ls.register(null_ls.builtins.code_actions.shellcheck)
	end,
	markdownlint = function()
		null_ls.register(null_ls.builtins.diagnostics.markdownlint)
		null_ls.register(null_ls.builtins.formatting.markdownlint)
	end,
	shfmt = function()
		null_ls.register(null_ls.builtins.formatting.shfmt)
	end,
	cspell = function()
		null_ls.register(null_ls.builtins.diagnostics.cspell)
		null_ls.register(null_ls.builtins.code_actions.cspell)
	end,
})

null_ls.setup({
	debug = false,
	sources = {
		null_ls.builtins.code_actions.gitsigns,
	},
	-- save auto format
	on_attach = function(client)
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
		end
	end,
})
