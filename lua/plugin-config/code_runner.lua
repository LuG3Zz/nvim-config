local status, code_runner = pcall(require, "code_runner")
if not status then
	vim.notify("没有找到 code_runner")
	return
end

code_runner.setup({
	-- put here the commands by filetype
	filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
		go = "go run .",
	},
})
