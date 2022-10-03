local status, ts = pcall(require, "typescript")
if not status then
	vim.notify("没有找到 typescript.nvim")
	return
end

local status, tsserver = pcall(require, "lsp.config.tsserver")
if not status then
	vim.notify("没有找到 tsserver")
	return
end

ts.setup({
	disable_commands = false, -- prevent the plugin from creating Vim commands
	debug = false, -- enable debug logging for commands
	go_to_source_definition = {
		fallback = true, -- fall back to standard LSP definition on failure
	},
	server = tsserver, -- pass options to lspconfig's setup method
})
