-- If the mason component is not found, do not continue execution
local status, mason = pcall(require, "mason")
if not status then
	vim.notify("not found mason")
	return
end

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("lsp.setup")

require("null-ts.setup")

require("dap.setup")
