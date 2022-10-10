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
		-- Disable the formatting function and leave it to a special plug-in plug-in for processing
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false

		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end

		-- Bind shortcut keys
		require("keybindings").mapLSP(buf_set_keymap)
		-- Auto format on save
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
	end,
}

return opt
