local packer = require("packer")
packer.startup({
	function(use)
		-- Packer 可以管理自己本身
		use("wbthomason/packer.nvim")
		-- 你的插件列表...
		-- nvim-tree (新增)
		use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
		-- bufferline (新增)
		use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
		-- lualine (新增)
		use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
		use("arkav/lualine-lsp-progress")
		-- telescope （新增）
		use({ "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } })
		-- telescope extensions
		use("LinArcX/telescope-env.nvim")
		-- dashboard-nvim (新增)
		use("glepnir/dashboard-nvim")
		-- project
		use("ahmedkhalf/project.nvim")
		-- treesitter （新增）
		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
		-- ui (新增)
		use("onsails/lspkind-nvim")
		use("tami5/lspsaga.nvim") -- 新增
		-- indent-blankline
		use("lukas-reineke/indent-blankline.nvim")
		-- 代码格式化
		-- use("mhartington/formatter.nvim")
		use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
		-- 大纲
		use("simrat39/symbols-outline.nvim")
		-- quick run
		use({ "is0n/jaq-nvim" })
		--------------------- LSP --------------------
		-- Lspconfig
		use({ "neovim/nvim-lspconfig" })
		------------------- debug---------------------
		use("mfussenegger/nvim-dap")
		use("theHamsta/nvim-dap-virtual-text")
		use("rcarriga/nvim-dap-ui")
		use({ "leoluz/nvim-dap-go", requires = "mfussenegger/nvim-dap" })
		--------------------git-----------------------
		use("lewis6991/gitsigns.nvim")
		use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })
		-- 注释
		use("numToStr/Comment.nvim")
		-- 自动添加括号
		use("windwp/nvim-autopairs")
		-- floaterm
		use("voldikss/vim-floaterm")
		-- translator
		use("voldikss/vim-translator")
		-- 缓存插件，通过将lua编译为字节码缓存提高启动速度
		use("lewis6991/impatient.nvim")
		-- auto-save
		use("Pocco81/auto-save.nvim")
		-- 补全引擎
		use("hrsh7th/nvim-cmp")
		-- snippet 引擎
		use("hrsh7th/vim-vsnip")
		-- 补全源
		use("hrsh7th/cmp-vsnip")
		use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
		use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
		use("hrsh7th/cmp-path") -- { name = 'path' }
		use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

		-- 常见编程语言代码段
		use("rafamadriz/friendly-snippets")
		--------------------- colorschemes --------------------
		-- tokyonight
		use("folke/tokyonight.nvim")
		-- OceanicNext
		use("mhartington/oceanic-next")
		-- gruvbox
		use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })
		-- zephyr 暂时不推荐，详见上边解释
		-- use("glepnir/zephyr-nvim")
		-- nord
		use("shaunsingh/nord.nvim")
		-- onedark
		use("ful1e5/onedark.nvim")
		-- nightfox
		use("EdenEast/nightfox.nvim")
		-------------------------------------------------------
	end,
	config = {
		-- 并发数限制
		max_jobs = 16,
		-- 自定义源
		git = {
			-- default_url_format = "https://hub.fastgit.xyz/%s",
			-- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
			-- default_url_format = "https://gitcode.net/mirrors/%s",
			-- default_url_format = "https://gitclone.com/github.com/%s",
		},
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	},
})

-- 每次保存 plugins.lua 自动安装插件
pcall(
	vim.cmd,
	[[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
