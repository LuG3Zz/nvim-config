local packer = require("packer")
packer.startup({
	function(use)
		-- Packer manager self
		use("wbthomason/packer.nvim")
		-- Nvim-tree
		use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
		-- Bufferline
		use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
		-- Lualine
		use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
		use("arkav/lualine-lsp-progress")
		-- Telescope
		use({ "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } })
		-- Telescope extensions
		use({ "LinArcX/telescope-env.nvim", requires = { "nvim-telescope/telescope.nvim" } })
		-- Dashboard-nvim
		use("glepnir/dashboard-nvim")
		-- Project
		use("ahmedkhalf/project.nvim")
		-- Treesitter
		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
		use({ "nvim-treesitter/nvim-treesitter-context", requires = { "nvim-treesitter/nvim-treesitter" } })
		-- Portable package manager for Neovim that runs everywhere Neovim runs
		use("williamboman/mason.nvim")
		-- Quickstart configs for Nvim LSP
		use("neovim/nvim-lspconfig")
		-- Makes it easier to use lspconfig with mason.nvim
		use({ "williamboman/mason-lspconfig.nvim", requires = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" } })
		-- Completion engine
		use("hrsh7th/nvim-cmp")
		-- snippet engine
		use("hrsh7th/vim-vsnip")
		-- snippet source
		use("hrsh7th/cmp-vsnip")
		use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
		use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
		use("hrsh7th/cmp-path") -- { name = 'path' }
		use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
		use("hrsh7th/cmp-nvim-lsp-document-symbol") -- { name = 'nvim_lsp_document_symbol' }
		use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
		use("ray-x/cmp-treesitter") -- {name = 'treesitter'}
		-- Common programming language code snippets
		use("rafamadriz/friendly-snippets")
		-- UI
		use("onsails/lspkind-nvim")
		-- Indent-blankline
		use("lukas-reineke/indent-blankline.nvim")
		-- Lspsaga,a light-weight lsp plugin based on neovim's built-in lsp with a highly performant UI.
		use("glepnir/lspsaga.nvim")
		-- Code format
		use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
		-- A bridge of mason and null-ts
		use({
			"jayp0521/mason-null-ls.nvim",
			requires = { "jose-elias-alvarez/null-ls.nvim", "williamboman/mason.nvim" },
		})
		-- Debug Adapter Protocol client implementation for Neovim
		use("mfussenegger/nvim-dap")
		-- Dap extensions
		use({ "theHamsta/nvim-dap-virtual-text", requires = { "mfussenegger/nvim-dap" } })
		-- Dap extensions
		use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
		-- A bridge of mason and dap
		use({ "jinzhongjia/mason-nvim-dap.nvim", requires = { "mfussenegger/nvim-dap", "williamboman/mason.nvim" } })
		-- Telescope and dap extensions
		use({
			"nvim-telescope/telescope-dap.nvim",
			requires = {
				"nvim-telescope/telescope.nvim",
				"mfussenegger/nvim-dap",
			},
		})
		-- Dap extensions for go
		use({ "leoluz/nvim-dap-go", requires = "mfussenegger/nvim-dap" })
		-- Dap extensions for js
		use({ "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } })
		-- Dap extensions for python
		use({ "mfussenegger/nvim-dap-python", requires = "mfussenegger/nvim-dap" })
		-- A tree like view for symbols in Neovim using the Language Server Protocol.
		use("simrat39/symbols-outline.nvim")
		-- Git integration for buffers
		use("lewis6991/gitsigns.nvim")
		-- Convenient	comment
		use("numToStr/Comment.nvim")
		-- Auto add pairs
		use("windwp/nvim-autopairs")
		-- Floaterm
		use("voldikss/vim-floaterm")
		-- Translator
		use("voldikss/vim-translator")
		-- Auto-save
		use("Pocco81/auto-save.nvim")
		-- Todo comment
		use({ "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }) --todocomment
		-- Colorizer
		use("norcalli/nvim-colorizer.lua")
		-- Trouble list
		use({ "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" })
		-- Dims inactive portions of the code you're editing
		use("folke/twilight.nvim")
		-- Zen-mode
		use("folke/zen-mode.nvim")

		-- Improve startup time for Neovim
		use("lewis6991/impatient.nvim")

		--------------------- colorschemes --------------------
		-- Tokyonight
		use("folke/tokyonight.nvim")
		use("projekt0n/github-nvim-theme")
		-------------------------------------------------------
	end,
	config = {
		-- Concurrency limit
		max_jobs = 16,
		-- Custom source
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

-- Automatically install plugins every time you save plugins.lua
pcall(
	vim.cmd,
	[[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
