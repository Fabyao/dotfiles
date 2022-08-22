local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
	open_mapping = [[<c-\>]],
	close_on_exit = true,
	float_opts = {
		border = "curved",
	},
})

function _G.set_terminal_keymaps()
	local opts = { noremap = true }
	vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<C-\><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _LAZYGIT_TOGGLE()
	lazygit:toggle()
end
function _TOGGLETERM_GO_TO_FILE()
	-- local cursor = vim.api.nvim_win_get_cursor(0)
	-- local bufnr = vim.api.nvim_get_current_buf()
	-- toggleterm.toggle(0)
	-- print("go to files called")
	-- vim.api.nvim_win_set_buf(0, bufnr)
	-- vim.api.nvim_win_set_cursor(0, cursor)
	-- vim.cmd("norm! gF")
	local nt_api = require("nvim-tree.api")
	nt_api.tree.find_file("package.json")
	print("go to files called")
end

vim.api.nvim_set_keymap("n", "<m-3>", "<cmd>lua _TOGGLETERM_GO_TO_FILE()<CR>", { noremap = true })
