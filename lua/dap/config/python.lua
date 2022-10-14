local status, dap_python = pcall(require, "dap-python")
if not status then
	vim.notify("not found nvim-dap-python")
	return
end
dap_python.setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
