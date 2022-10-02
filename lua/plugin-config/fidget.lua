local status, fidget = pcall(require, "fidget")
if not status then
	vim.notify("没找到fidget插件")
	return
end

fidget.setup()
