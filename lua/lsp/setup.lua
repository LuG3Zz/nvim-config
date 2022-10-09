local servers = {
  "sumneko_lua",
  "clangd",
  "asm_lsp",
  "bashls",
  "cmake",
  "cssls",
  "dockerls",
  "emmet_ls",
  "gopls",
  "html",
  "jsonls",
  "tsserver",
  "marksman",
  -- "psalm",
  -- "powershell_es",
  "pyright",
  "sqls", -- 需要额外的yaml配置
  "tailwindcss",
  "volar", -- 可以进行定制，覆盖默认的tsserver
}
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

local servers_handlers = {}

for _, value in pairs(servers) do
  local status, config = pcall(require, "lsp.config." .. value)
  if not status then
    vim.notify("lsp配置文件没有找到 " .. value)
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


-- 代码补全
require("lsp.cmp")

-- ui补全
require("lsp.ui")

