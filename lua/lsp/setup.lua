local lspconfig = require("lspconfig")

local servers = {
	"sumneko_lua",
	"html",
	"emmet_ls",
	"tsserver",
	"cssls",
	"jsonls",
	"gopls",
	"vuels",
	"ccls",
	"cmake",
	"bashls",
	"dockerls",
	"yamlls",
	"rnix",
}

for _, value in pairs(servers) do
	local status, config = pcall(require, "lsp.config." .. value)
	if not status then
		vim.notify("lsp配置文件没有找到 " .. value)
		goto continue
	end
	lspconfig[value].setup(config)
	::continue::
end
