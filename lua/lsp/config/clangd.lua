local opt = {
	settings = {},
	cmd = { "clangd", "--offset-encoding=utf-16" },
	flags = {
		debounce_text_changes = 150,
	},
	root_dir = function()
		return vim.fn.getcwd()
	end,
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
