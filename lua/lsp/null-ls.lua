local status, null_ls = pcall(require, "null-ls")
if not status then
	vim.notify("没有找到 null-ls")
	return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
	debug = false,
	sources = {
		-- Formatting ---------------------
		-- shfmt
		formatting.shfmt,
		-- StyLua
		formatting.stylua,
		-- go
		formatting.gofumpt,
		formatting.goimports,
		-- python
		formatting.autopep8,
		-- cmake
		formatting.cmake_format,
		-- C, C++, C++/CLI, Objective‑C, C# and Java
		formatting.astyle,
		-- proto
		formatting.buf,
		-- nix
		formatting.nixfmt,
		-- gitsigns
		-- null_ls.builtins.code_actions.gitsigns,
		-- Fix common misspellings in source code
		formatting.codespell,
		-- frontend
		formatting.prettier.with({ -- 只比默认配置少了 markdown
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"vue",
				"css",
				"scss",
				"less",
				"html",
				"json",
				"yaml",
				"markdown",
				"graphql",
			},
			prefer_local = "node_modules/.bin",
		}),
		-- formatting.fixjson,
		-- formatting.black.with({ extra_args = { "--fast" } }),
	},
	-- 保存自动格式化
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		end
	end,
})
