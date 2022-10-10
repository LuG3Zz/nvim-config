local opt = {
	settings = {},
	flags = {
		debounce_text_changes = 150,
	},
	on_attach = function(client, bufnr)
		-- Disable the formatting function and leave it to a special plug-in plug-in for processing
		client.server_capabilities.documentFormattingProvider = false
		client.resolved_capabilities.document_range_formatting = false

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
