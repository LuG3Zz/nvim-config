local status, dapGo = pcall(require, "dap-go")
if not status then
	vim.notify("没找到nvim-dap-go插件!")
	return
end
dapGo.setup()
