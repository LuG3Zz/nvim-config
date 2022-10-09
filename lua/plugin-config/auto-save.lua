local status, autoSave = pcall(require, "auto-save")
if not status then
	vim.notify("没有找到 auto-save")
	return
end

autoSave.setup({
	enabled = false,
})
