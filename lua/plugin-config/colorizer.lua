local status, color = pcall(require, "colorizer")
if not status then
	vim.notify("没有找到 colorizer")
	return
end

color.setup()
