local nodeVersion = "v14.20.0" --"v16.16.0" or "v12.22.12"

-- local localDir = vim.fn.getcwd();

-- if string.find(vim.fn.getcwd(), "/cpp") then
--     nodeVersion = "v14.20.0" --"v16.16.0" or "v12.22.12"
-- end
--Checking if we should provide legacy support
-- local file = io.open(vim.fn.getcwd()..'/package.json', 'r')
-- if file then
--     local file_contents = file:read('*all')
--     local currenCliNumber = tonumber(file_contents.match(file_contents, [["@angular/cli": "[~|^](%d+).%d+.%d+"]]))
--     if currenCliNumber == nil or currenCliNumber == '' then
--         nodeVersion = "v16.16.0"
--     elseif currenCliNumber < 8 then
--         nodeVersion = "v10.24.1"
--     elseif currenCliNumber < 9 then
--         nodeVersion = "v12.22.12"
--     end
-- end

local languageServerPath = "/home/cactus/.fnm/node-versions/" .. nodeVersion .. "/installation/lib/node_modules"
local cmd = {
	"ngserver",
	"--stdio",
	"--tsProbeLocations",
	languageServerPath,
	"--ngProbeLocations",
	languageServerPath,
	"--viewEngine",
}

return {
	filetypes = { "typescript", "html" },
	cmd = cmd,
	on_new_config = function(new_config, new_root_dir)
		new_config.cmd = cmd
	end,
}
