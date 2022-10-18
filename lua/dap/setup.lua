local status, mason_dap = pcall(require, "mason-nvim-dap")
if not status then
	vim.notify("not found nvim-dap")
	return
end
-- import dap's config
require("dap.dap-config")

-- list the debug dependence that must be installed
mason_dap.setup({
	ensure_installed = {
		"python",
		"delve",
		"node2",
		"cppdbg",
		"js",
	},
})

-- config dap
mason_dap.setup_handlers({
	cppdbg = require("dap.config.cpptools"),
})

-- debug depend nvim-dap-go
require("dap.config.go")
-- debug depend nvim-dap-python
require("dap.config.python")
-- debug depend nvim-dap-vscode-js
require("dap.config.js")
