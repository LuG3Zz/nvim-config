local status, gitsigns = pcall(require, "gitsigns")
if not status then
	vim.notify("没找到gitsignss插件")
	return
end
gitsigns.setup({
	on_attach = require("keybindings").gitsigns,
})
