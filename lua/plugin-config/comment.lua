require("Comment").setup()
local status, comment = pcall(require, "Comment")
if not status then
	vim.notify("没找到Comment插件!")
	return
end
comment.setup()
