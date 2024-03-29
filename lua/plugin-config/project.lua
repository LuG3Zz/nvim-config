local status, project = pcall(require, "project_nvim")
if not status then
	vim.notify("not found project_nvim")
	return
end

-- nvim-tree
vim.g.nvim_tree_respect_buf_cwd = 1

project.setup({
	detection_methods = { "pattern" },
	patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".sln" },
})

local status1, telescope = pcall(require, "telescope")
if not status1 then
	vim.notify("not found telescope")
	return
end
-- Telescope extension
pcall(telescope.load_extension, "projects")
