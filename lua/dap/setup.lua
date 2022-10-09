local dap = require("dap")

-- import dap's config
require("dap.dap-config")

-- list the debug dependence that must be installed
require("mason-nvim-dap").setup({
	ensure_installed = {
		"python",
		"delve",
		"node2",
		"cppdbg",
	},
})

-- config dap
require("mason-nvim-dap").setup_handlers({
	cppdbg = function()
		dap.adapters.cppdbg = {
			id = "cppdbg",
			type = "executable",
			command = os.getenv("HOME") .. "/.local/share/nvim/mason/bin/OpenDebugAD7",
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
				miDebuggerPath = "/usr/bin/gdb",
				cwd = "${workspaceFolder}",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
			},
		}
	end,
})

-- debug depend nvim-dap-go
require("dap.config.go")
-- debug depend nvim-dap-python
require("dap.config.python")
