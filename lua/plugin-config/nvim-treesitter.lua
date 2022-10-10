local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	vim.notify("not found nvim-treesitter")
	return
end

treesitter.setup({
	-- Install language parser
	-- :TSInstallInfo command to view supported languages
	ensure_installed = "all",
	-- Enable code highlighting module
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	-- Enable incremental selection module
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<CR>",
			node_incremental = "<CR>",
			node_decremental = "<BS>",
			scope_incremental = "<TAB>",
		},
	},
	-- Enable code indentation module (=)
	indent = {
		enable = true,
	},
})

-- Open the Folding module
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- Do not fold by default
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.opt.foldlevel = 99
