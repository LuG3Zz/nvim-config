local servers = require("lsp.list")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

local servers_handlers = {}

for _, value in pairs(servers) do
  local status, config = pcall(require, "lsp.config." .. value)
  if not status then
    vim.notify("lsp configuration not found" .. value)
    goto continue
  end
  servers_handlers[value]=function()
    lspconfig[value].setup(config)
  end
  ::continue::
end

mason_lspconfig.setup({
  ensure_installed = servers
})

mason_lspconfig.setup_handlers(servers_handlers)


-- Code completion
require("lsp.cmp")

-- ui completion
require("lsp.ui")

