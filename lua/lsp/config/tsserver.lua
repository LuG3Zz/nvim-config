local opt = {
	settings = {},
	cmd = {
		"typescript-language-server",
		"--stdio",
		"--tsserver-path=/run/current-system/sw/lib/node_modules/typescript/lib/",
	},
	flags = {
		debounce_text_changes = 150,
	},
	on_attach = function(client, bufnr)
		-- 禁用格式化功能，交给专门插件插件处理
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false

		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end
		-- 绑定快捷键
		require("keybindings").mapLSP(buf_set_keymap)
		-- 保存时自动格式化
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
	end,
}

return opt
