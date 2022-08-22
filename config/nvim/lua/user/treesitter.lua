local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end
local tree_sitter_fold_enabled = false
local function enable_tree_sitter_fold()
	if not tree_sitter_fold_enabled then
		-- vim.cmd([[set nofoldenable]])
		-- vim.cmd([[set foldlevelstart=99]])
		vim.cmd([[set foldmethod=expr]])
		vim.cmd([[set foldexpr=nvim_treesitter#foldexpr()]])

		tree_sitter_fold_enabled = true
	end
end
-- enable_tree_sitter_fold()
configs.setup({
	ensure_installed = {
		"scss",
		"sql",
		"javascript",
		"typescript",
		"tsx",
		"lua",
		"rust",
		"toml",
		"graphql",
		"html",
		"json",
		"yaml",
	}, -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css", "rust" } },
})
