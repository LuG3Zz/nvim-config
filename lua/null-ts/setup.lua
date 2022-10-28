local mason_null_ls = require("mason-null-ls")
local null_ls = require("null-ls")

local list = require("null-ts.list")
local sources = {}
local handlers = {}

for _, ele in pairs(list) do
	local name = ele[1]
	local attrs = ele[2]
	-- insert name to sources
	table.insert(sources, name)
	-- create func of name to register
	handlers[name] = function()
		for _, attr in pairs(attrs) do
			null_ls.register(null_ls.builtins[attr][name])
		end
	end
end

mason_null_ls.setup({
	ensure_installed = sources,
})

mason_null_ls.setup_handlers(handlers)

null_ls.setup({
	debug = false,
	sources = {
		null_ls.builtins.code_actions.gitsigns,
	},
	-- save auto format
	on_attach = function(_)
		vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()']])
	end,
})
