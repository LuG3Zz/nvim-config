-- 屏蔽掉neovim::Ext
pcall(
	vim.cmd,
	[[
    let g:loaded_perl_provider = 0
    let g:loaded_ruby_provider = 0
  ]]
)

-- 基础设置
require("basic")

-- 快捷键映射
require("keybindings")

-- Packer 插件管理
require("plugins")

-- 主题设置 （新增）
require("colorscheme")

-- 插件配置
require("plugin-config.nvim-tree")

-- 顶部标签栏
require("plugin-config.bufferline")

-- 底部信息标签栏
require("plugin-config.lualine")

-- 全局搜索
require("plugin-config.telescope")

-- 首页面板
require("plugin-config.dashboard")
-- 最近项目，配合面板使用
require("plugin-config.project")

-- 语法高亮
require("plugin-config.nvim-treesitter")

-- 内置LSP
require("lsp.setup")

-- 代码片段
require("lsp.cmp")

-- UI美化
require("lsp.ui")

-- indent-blankline
require("plugin-config.indent-blankline")

-- formatter
require("lsp.null-ls")

-- 大纲
require("plugin-config.symols-outline")

-- DAP
require("dap.nvim-dap")
require("dap.go") -- go
require("dap.python") -- python
require("dap.cpp.cpp")
require("dap.lldb")

-- 注释
require("plugin-config.comment")

-- gitsigns
require("plugin-config.gitsigns")

-- autopairs
require("plugin-config.nvim-autopairs")

-- impatient
require("impatient")

-- auro-save
require("plugin-config.auto-save")

-- todo-comments
require("plugin-config.todo-comments")

-- colorizer
require("plugin-config.colorizer")

-- typescript.nvim
require("plugin-config.typescript")

-- clangd_extensions
require("plugin-config.clangd_extensions")

-- code_runner
require("plugin-config.code_runner")
