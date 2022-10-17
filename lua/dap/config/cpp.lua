local dap_util = require("dap.util")

local status, dap = pcall(require, "dap")
if not status then
	vim.notify("not found nvim-dap")
	return
end

local config = function()
	dap.adapters.cppdbg = {
		id = "cppdbg",
		type = "executable",
		command = dap_util.mason_module_dir .. "/bin/OpenDebugAD7",
	}
	dap.configurations.cpp = {
		{
			name = "Launch file",
			type = "cppdbg",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
			stopAtEntry = true,
		},
		{
			name = "Attach to gdbserver :1234",
			type = "cppdbg",
			request = "launch",
			MIMode = "gdb",
			miDebuggerServerAddress = "localhost:1234",
			-- miDebuggerPath = "/usr/bin/gdb",
			cwd = "${workspaceFolder}",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
		},
	}
end

return config
