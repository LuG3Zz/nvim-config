local code_action = "code_actions"
local completion = "completion"
local diagnostics = "diagnostics"
local formatting = "formatting"
local hover = "hover"

local list = {
	{ "clang_format", { formatting } },
	{ "cmake_format", { formatting } },
	{ "gofumpt", { formatting } },
	{ "goimports", { formatting } },
	{ "golines", { formatting } },
	{ "staticcheck", { diagnostics } },
	{ "eslint_d", { code_action } },
	{ "markdownlint", { formatting, diagnostics } },
	{ "prettier", { formatting } },
	{ "shellcheck", { code_action } },
	{ "stylua", { formatting } },
	{ "jq", { formatting } },
	{ "shfmt", { formatting } },
	{ "codespell", { diagnostics } },
	{ "hadolint", { diagnostics } },
	{ "haml_lint", { diagnostics } },
	{ "dprint", { formatting } },
}

return list
