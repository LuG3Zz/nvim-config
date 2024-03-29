local list = require("lsp.list")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

local alones = {}
local servers = {}
local installServers = {}

local default_config = require("lsp.default-config")

for _, ele in pairs(list) do
	table.insert(installServers, ele.name)
	if ele.alone then
		table.insert(alones, ele.name)
	else
		table.insert(servers, ele.name)
	end
end

local servers_handlers = {}

for _, value in pairs(servers) do
	local status, config = pcall(require, "lsp.config." .. value)
	if not status then
		config = {}
	end
	servers_handlers[value] = function()
		lspconfig[value].setup(vim.tbl_deep_extend("force", default_config, config))
	end
end

mason_lspconfig.setup({
	ensure_installed = installServers,
})

mason_lspconfig.setup_handlers(servers_handlers)

for _, ele in pairs(alones) do
	require("lsp.config." .. ele)
end

-- Code completion
require("lsp.cmp")

-- ui completion
require("lsp.ui")
