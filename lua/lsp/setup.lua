local lspconfig = require("lspconfig")

local opts = {
	settings = {},
	flags = {
		debounce_text_changes = 150,
	},
	on_attach = function(client, bufnr)
		-- 禁用格式化功能，交给专门插件插件处理
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false

		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end
		-- 绑定快捷键
		require("keybindings").mapLSP(buf_set_keymap)
		-- 保存时自动格式化
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
	end,
}

-- html
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.html.setup({
	capabilities = capabilities,
	settings = {},
	flags = {
		debounce_text_changes = 150,
	},
	on_attach = function(client, bufnr)
		-- 禁用格式化功能，交给专门插件插件处理
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false

		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end
		-- 绑定快捷键
		require("keybindings").mapLSP(buf_set_keymap)
		-- 保存时自动格式化
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
	end,
})
-- cssls
lspconfig.cssls.setup({
	capabilities = capabilities,
	settings = {},
	flags = {
		debounce_text_changes = 150,
	},
	on_attach = function(client, bufnr)
		-- 禁用格式化功能，交给专门插件插件处理
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false

		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end
		-- 绑定快捷键
		require("keybindings").mapLSP(buf_set_keymap)
		-- 保存时自动格式化
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
	end,
})

-- json
lspconfig.jsonls.setup({
	capabilities = capabilities,
})

-- eslint
lspconfig.eslint.setup(opts)

-- go
lspconfig.gopls.setup(opts)
-- lspconfig.golangci_lint_ls.setup(opts)
-- vue
lspconfig.vuels.setup(opts)
-- lua
lspconfig.sumneko_lua.setup({
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
				-- Setup your lua path
				--                 path = runtime_path,
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
	flags = {
		debounce_text_changes = 150,
	},
	on_attach = function(client, bufnr)
		-- 禁用格式化功能，交给专门插件插件处理
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false

		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end
		-- 绑定快捷键
		require("keybindings").mapLSP(buf_set_keymap)
		-- 保存时自动格式化
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
	end,
})
-- c/c++
lspconfig.ccls.setup({
	init_options = {
		compilationDatabaseDirectory = "build",
		index = {
			threads = 0,
		},
		clang = {
			excludeArgs = { "-frounding-math" },
		},
	},
	flags = {
		debounce_text_changes = 150,
	},
	on_attach = function(client, bufnr)
		-- 禁用格式化功能，交给专门插件插件处理
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false

		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end
		-- 绑定快捷键
		require("keybindings").mapLSP(buf_set_keymap)
		-- 保存时自动格式化
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
	end,
})
-- cmake
lspconfig.cmake.setup(opts)
-- bashls
lspconfig.bashls.setup(opts)
-- dockerfile
lspconfig.dockerls.setup(opts)
-- yaml
lspconfig.yamlls.setup(opts)
-- nix
lspconfig.rnix.setup(opts)
