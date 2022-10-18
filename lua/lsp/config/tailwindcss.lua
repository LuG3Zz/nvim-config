local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status then
	vim.notify("not found cmp_nvim_lsp")
	return
end
local opt = {
	capabilities = cmp_nvim_lsp.default_capabilities(capabilities),
	settings = {},
	flags = {
		debounce_text_changes = 150,
	},
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
