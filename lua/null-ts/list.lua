local code_action = "code_actions"
local completion = "completion"
local diagnostics = "diagnostics"
local formatting = "formatting"
local hover = "hover"

local list = {
	-- To add one of null-ts component,
	-- you just add a table with name and attribute,
	-- the attributes are :
	-- "code_action",
	-- "completion",
	-- "diagnostics",
	-- "formatting",
	-- "hover"
	-- For detailed support of components, please see null-ts BUILTIN
	{ "clang_format", { formatting } },
	{ "cmake_format", { formatting } },
	{ "gofumpt", { formatting } },
	{ "goimports", { formatting } },
	{ "golines", { formatting } },
	{ "staticcheck", { diagnostics } },
	{ "eslint_d", { code_action, diagnostics } },
	{ "markdownlint", { formatting, diagnostics } },
	{ "prettier", { formatting } },
	{ "shellcheck", { code_action } },
	{ "stylua", { formatting } },
	{ "jq", { formatting } },
	{ "shfmt", { formatting } },
	{ "codespell", { diagnostics } },
	{ "hadolint", { diagnostics } },
	{ "haml_lint", { diagnostics } },
	{ "black", { formatting } },
	{ "isort", { formatting } },
	-- { "dprint", { formatting } },
}

return list
