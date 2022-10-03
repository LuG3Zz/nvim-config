local status, clangd_extensions = pcall(require, "clangd_extensions")
if not status then
	vim.notify("没有找到 clangd_extensions")
	return
end

local status, clangd = pcall(require, "lsp.config.clangd")
if not status then
	vim.notify("没有找到 clangd 配置文件")
	return
end

clangd_extensions.setup({
	server = clangd,
})
