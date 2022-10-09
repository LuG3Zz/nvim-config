local dap = require("dap")

-- import dap's config
require("dap.dap-config")

-- list the debug dependence that must be installed
require("mason-nvim-dap").setup({
	ensure_installed = { "python", "delve", "node2" },
})

-- config dap
require("mason-nvim-dap").setup_handlers({})

-- debug depend nvim-dap-go
require("dap.config.go")
-- debug depend nvim-dap-python
require("dap.config.python")
