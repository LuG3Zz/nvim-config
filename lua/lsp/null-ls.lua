local status, null_ls = pcall(require, "null-ls")
if not status then
	vim.notify("没有找到 null-ls")
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

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
		code_actions.gitsigns,
		-- Fix common misspellings in source code
		formatting.codespell,
		-- diagnostics eslint
		diagnostics.eslint,
		-- code_action eslint
		code_actions.eslint,
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
		}),
	},
	-- #{m}: message
	-- #{s}: source name (defaults to null-ls if not specified)
	-- #{c}: code (if available)
	-- 提示格式： [eslint] xxx
	diagnostics_format = "[#{s}] #{m}",
	-- 保存自动格式化
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		end
	end,
})
