-- 如果找不到lualine 组件，就不继续执行
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

require("format.setup")

require("dap.setup")
