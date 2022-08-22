local dap_ui_status_ok, dapui = pcall(require, "dapui")
if not dap_ui_status_ok then
	return
end

dapui.setup({
	layouts = {
		{
			elements = {
				-- Elements can be strings or table with id and size keys.
				{ id = "scopes", size = 0.25 },
				"breakpoints",
				"stacks",
				"watches",
			},
			size = 40, -- 40 columns
			position = "right",
		},
	},
})

vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })

--[[ dap.listeners.after.event_initialized["dapui_config"] = function() ]]
--[[ 	dapui.open() ]]
--[[ end ]]
--[[]]
--[[ dap.listeners.before.event_terminated["dapui_config"] = function() ]]
--[[ 	dapui.close() ]]
--[[ end ]]
--[[]]
--[[ dap.listeners.before.event_exited["dapui_config"] = function() ]]
--[[ 	dapui.close() ]]
--[[ end ]]